/*

Aplikasi CRUD dengan Java Swing
Silakan dimodifikasi dan dipergunakan sesuai dengan kebutuhan Anda.

ali LIM
konglie@kurungkurawal.com
http://www.kurungkurawal.com

 */
package com.kurungkurawal.crud;

import com.kurungkurawal.db.dbRow;
import com.kurungkurawal.tools.Utils;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.HashMap;
import java.util.Map;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.Border;
import net.miginfocom.swing.MigLayout;

/**
 *
 * @author user
 */
public class MemberForm extends JDialog {
    private String ObjectKeyID = "";
    public MemberForm(JFrame parent, String title){
        super(parent);
        setTitle(title);
        setModal(true);
        this.setModalityType(JDialog.ModalityType.APPLICATION_MODAL);
        initComponents();
        setResizable(false);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        pack();
        setLocationRelativeTo(parent);
    }
    
    private Map<String, JTextField> entries;
    private JPanel form;
    private void initComponents(){
        Border padding = BorderFactory.createEmptyBorder(5,5,5,5);
        ((JComponent) getContentPane()).setBorder(padding);
        
        entries = new HashMap<String, JTextField>();
        form = new JPanel(new MigLayout("insets 5"));
        addFormElement("Nama", "nama", new JTextField());
        addFormElement("Telepon", "telepon", new JTextField());
        addFormElement("Handphone", "handphone", new JTextField());
        addFormElement("Email", "email", new JTextField());
        
        JButton btnSave = new JButton("Simpan");
        btnSave.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e) {
                MemberForm.this.save();
            }
            
        });
        form.add(btnSave, "span, right, push, gapy 10, wrap");
        
        getContentPane().add(form, BorderLayout.CENTER);
    }
    
    private void addFormElement(String label, String field, JTextField el){
        form.add(new JLabel(label));
        form.add(el, "w 200, wrap");
        entries.put(field, el);
    }
    
    public void save(){
        dbRow values = getEntries();
        Utils.stdout(values);
        if(!validate(values)){
            return;
        }
        
        if(!ObjectKeyID.equals("")){
            values.put("id", ObjectKeyID);
        }
        
        int saved = Launcher.getDatabaseConnection().save("member", "id", values);
        if(saved > 0){
            setVisible(false);
            Utils.alert("Data Tersimpan");
        } else {
            Utils.alert("Gagal menyimpan data");
        }
    }
    
    private boolean validate(dbRow values){
        for(String s : values.keySet()){
            if(values.get(s).trim().isEmpty()){
                Utils.alert("Semua isian wajib diisi.");
                return false;
            }
        }
        return true;
    }
    
    private dbRow getEntries(){
        dbRow values = new dbRow();
        for(String name : entries.keySet()){
            values.put(name, entries.get(name).getText());
        }
        
        return values;
    }
    
    public void loadData(String id){
        dbRow data = Members.getMember(id);
        if(data == null){
            setVisible(false);
            return;
        }
        
        ObjectKeyID = id;
        for(String field : data.keySet()){
            if(entries.containsKey(field)){
                entries.get(field).setText(data.get(field));
            }
        }
    }
}
