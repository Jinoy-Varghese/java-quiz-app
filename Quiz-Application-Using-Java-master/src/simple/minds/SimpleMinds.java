package simple.minds;

import java.sql.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class SimpleMinds extends JFrame implements ActionListener{
    
    JButton b1, b2, b3;
    JTextField t1,t21;
    SimpleMinds(){
        setBounds(400, 200, 1200, 540); // dleft, //dup // length, height ///////
        getContentPane().setBackground(Color.WHITE);
        setLayout(null);
        
        
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("simple/minds/icons/Quiz_Time.jpg"));
        JLabel l1 = new JLabel(i1);
        l1.setBounds(0, 0, 600, 500);
        add(l1);
        
        JLabel l2 = new JLabel("Quiz Time");
        l2.setFont(new Font("Viner Hand ITC", Font.BOLD, 40));
        l2.setForeground(new Color(30, 144, 254));
        l2.setBounds(750, 60, 300, 45);
        add(l2);
        
        JLabel l3 = new JLabel("Enter Your Name");
        l3.setFont(new Font("Mongolian Baiti", Font.BOLD, 18));
        l3.setForeground(new Color(0, 0, 0));
        l3.setBounds(735, 150, 300, 20);
        add(l3);
        
        t1 = new JTextField();
        t1.setBounds(735, 180, 300, 25);
        t1.setFont(new Font("Times New Roman", Font.BOLD, 20));
        add(t1);
        
        JLabel l11 = new JLabel("Enter Your Password");
        l11.setFont(new Font("Mongolian Baiti", Font.BOLD, 18));
        l11.setForeground(new Color(0,0,0));
        l11.setBounds(735, 214, 300, 20);
        add(l11);
        
        t21 = new JPasswordField();
        t21.setBounds(735, 240, 300, 25);
        t21.setFont(new Font("Times New Roman", Font.BOLD, 20));
        add(t21);
        
        b1 = new JButton("Next");
        b1.setBounds(735, 300, 120, 25);
        b1.setBackground(new Color(30, 144, 254));
        b1.setForeground(Color.WHITE);
        b1.addActionListener(this);
        add(b1);
        
        b2 = new JButton("Exit");
        b2.setBounds(915, 300, 120, 25);
        b2.setBackground(new Color(30, 144, 254));
        b2.setForeground(Color.WHITE);
        b2.addActionListener(this);
        add(b2);
        
        b3 = new JButton("Create New Account");
        b3.setBounds(735, 400,300, 30);
        b3.setBackground(new Color(30, 144, 254));
        b3.setForeground(Color.WHITE);
        b3.addActionListener(this);
        add(b3);
        
        JLabel l4 = new JLabel("--------- OR ---------");
        l4.setFont(new Font("Viner Hand ITC", Font.BOLD, 27));
        l4.setForeground(new Color(10, 144, 254));
        l4.setBounds(745, 350, 300, 45);
        add(l4);
        
        setVisible(true);
    }
    
    public void actionPerformed(ActionEvent ae){
        
 if(ae.getSource() == b1){
            
            
            
        String name = t1.getText();
        String password = t21.getText();
        
        
         try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizz_app","root","");  

            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from login where username='"+name+"'and password='"+password+"';");  
            if(rs.next()) 
            {
                if(rs.getString(5).equals("admin"))
                {
                   /* AddQuestion d=new AddQuestion();
                    d.setVisible(true);
                    d.pack();
                    d.setResizable(false);
                    d.setDefaultCloseOperation(CreateNew.EXIT_ON_CLOSE);
                    this.dispose(); 
*/
                    this.setVisible(false);
                    new AdminPanel().setVisible(true);
                }
                else
                {
                 this.setVisible(false);
                 new Rules(name);        
                }

            }
            else
                {
                    JOptionPane.showMessageDialog(null, "invalid Password\nname:"+name+"\npassword:"+password);
                }  

            }catch(Exception e){ System.out.println(e);}          
 
            
            

        }
    else if(ae.getSource() == b3){
    
       CreateNew c=new CreateNew();
       c.setVisible(true);
       c.pack();
       c.setSize(573,900);
       c.setResizable(false);
       c.setDefaultCloseOperation(CreateNew.EXIT_ON_CLOSE);
       this.dispose();
    }
 
    else{
            System.exit(0);
        }
    }

    public static void main(String[] args) {
        new SimpleMinds();
    }
    
}
