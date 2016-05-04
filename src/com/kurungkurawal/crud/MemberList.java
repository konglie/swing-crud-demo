/*

Aplikasi CRUD dengan Java Swing
Silakan dimodifikasi dan dipergunakan sesuai dengan kebutuhan Anda.

ali LIM
konglie@kurungkurawal.com
http://www.kurungkurawal.com

 */
package com.kurungkurawal.crud;

import com.kurungkurawal.db.dbList;
import com.kurungkurawal.db.dbRow;
import com.kurungkurawal.tools.Utils;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Map;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author user
 */
public class MemberList extends JPanel {
    public MemberList(){
        super(new BorderLayout());
        initComponents();
        loadAllData();
    }
    
    private JTable table;
    private JPanel toolbar;
    private void initComponents(){
        String[] fields = "id, Nama, Telepon, Handphone, Email".split(", ");
        DefaultTableModel tm = new DefaultTableModel(null, fields) {
            @Override
            public boolean isCellEditable(int x, int y){
                return false;
            }
        };
        table = new JTable(){
            @Override
            protected void paintComponent(Graphics g) {
                try {
                    super.paintComponent(g);
                    if (getRowCount() == 0) {
                        Graphics2D g2d = (Graphics2D) g;
                        Font prev = g.getFont();
                        Font italic = prev.deriveFont(Font.ITALIC);
                        g.setFont(italic);
                        RenderingHints hints = g2d.getRenderingHints();
                        g2d.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
                        g2d.drawString("Tidak ada data untuk ditampilkan.", 10, 20);
                        g2d.setRenderingHints(hints);
                    }
                } catch (Exception e) {

                }
            }
        };
        
        table.setModel(tm);
        table.setAutoCreateRowSorter(false);
        table.getColumnModel().getColumn(0).setMinWidth(0);
        table.getColumnModel().getColumn(0).setPreferredWidth(0);
        table.getColumnModel().getColumn(0).setMaxWidth(0);
        table.setColumnSelectionAllowed(false);
        table.setRowSelectionAllowed(true);
        table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        
        // double click akan sama fungsinya dengan tombol edit
        table.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent mouseEvent) {
                if (mouseEvent.getClickCount() == 2) {
                    showEditForm();
                }
            }
        });

        
        JScrollPane pane = new JScrollPane(table);
        add(pane, BorderLayout.CENTER);
        
        JPanel buttons = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        JButton btnNew = new JButton("Insert");
        btnNew.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e) {
                showInsertForm();
            }
        });
        buttons.add(btnNew);
        
        JButton btnEdit = new JButton("Edit");
        btnEdit.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e) {
                showEditForm();
            }
        });
        buttons.add(btnEdit);
        
        JButton btnDelete = new JButton("Hapus");
        btnDelete.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e) {
                confirmDelete();
            }
        });
        buttons.add(btnDelete);
        
        toolbar = new JPanel(new BorderLayout());
        toolbar.add(buttons, BorderLayout.EAST);
        
        // search bar
        JPanel searches = new JPanel(new FlowLayout(FlowLayout.LEFT));
        searches.add(new JLabel("Cari Nama"));
        txtSearch = new JTextField();
        txtSearch.addKeyListener(new KeyAdapter() {
            @Override
            public void keyReleased(KeyEvent keyEvent) {
                filterSearch(txtSearch.getText());
            }
        });
        txtSearch.setColumns(30);
        searches.add(txtSearch);
        
        toolbar.add(searches, BorderLayout.CENTER);
        
        add(toolbar, BorderLayout.NORTH);
    }
    private JTextField txtSearch;
    
    public void loadAllData(){
        if(!txtSearch.getText().isEmpty()){
            filterSearch(txtSearch.getText());
        } else {
            loadData(null);
        }
    }
    
    public void loadData(dbRow filter){
        setData(Members.loadData(filter));
    }
    
    private void setData(dbList data){
        DefaultTableModel tm = (DefaultTableModel) table.getModel();
        tm.setRowCount(0);
        Map<String, String> d;
        for(int i : data.keySet()){
            d = data.get(i);
            tm.addRow(new Object[]{
                d.get("id"),
                d.get("nama"),
                d.get("telepon"),
                d.get("handphone"),
                d.get("email")
            });
        }
    }
    
    public void filterSearch(String search){
        setData(Members.searchByName(search));
    }
    
    private String validateSelectedID(){
        int selected = table.getSelectedRow();
        if(selected < 0){
            Utils.alert("Pilih Data terlebih dahulu.");
            return "";
        }
        
        return table.getValueAt(selected, 0).toString();
    }
    
    private void showInsertForm(){        
        MemberForm form = new MemberForm(Launcher.getFrame(), "Daftarkan Member Baru");
        form.setVisible(true);
        
        // baris ini tidak akan dieksekusi sebelum form/JDialog ditutup
        loadAllData();
    }
    
    private void showEditForm(){
        String id = validateSelectedID(); 
        if(id.trim().isEmpty()){
            return;
        }        
             
        MemberForm form = new MemberForm(Launcher.getFrame(), "Edit data Member");
        form.loadData(id);
        form.setVisible(true);
        
        // baris ini tidak akan dieksekusi sebelum form/JDialog ditutup
        loadAllData();
    }
    
    private void confirmDelete(){
        String id = validateSelectedID(); 
        if(id.trim().isEmpty()){
            return;
        }
        
        String name = table.getValueAt(table.getSelectedRow(), 1).toString();
        if(Utils.confirm(String.format("Hapus data member: %s ?" , name))){
            if(Members.delete(id)){
                Utils.alert("Data terhapus");
                loadAllData();
            } else {
                Utils.alert("Gagal menghapus data");
            }
        }
    }
}
