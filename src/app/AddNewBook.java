package app;


import java.awt.Color;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;



import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
//import javax.swing.JDesktopPane;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;

import javax.swing.event.MenuEvent;
import javax.swing.event.MenuListener;





import java.awt.BorderLayout;


import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JScrollPane;


public class AddNewBook implements ActionListener,MenuListener{
	private static final Object Successful = null;

	JFrame frame;
	
	private JLabel formtitle=new JLabel("REGISTER BOOK");
	private JLabel reg_lb=new JLabel("BOOK TITLE");
	JTextField NAME=new JTextField();
	
	private JLabel fname_label=new JLabel("AUTHOR");
	JTextField price_f=new JTextField();
	
	private JLabel lname_label=new JLabel("SUBJECT");
	JTextField lname_f=new JTextField();
	
	private JLabel id_label=new JLabel("PUBLISHER");
	JTextField pid_f=new JTextField();
	
	private JLabel CAT=new JLabel("CATEGORY");
	JTextField CATF=new JTextField();
	
	private JLabel Edition=new JLabel("EDITION");
	JTextField EditionF=new JTextField();
//	
//	private JLabel email_label=new JLabel("EMAIL");
//	JTextField email_f=new JTextField();
//	
//	private JLabel pl=new JLabel("PASSWORD");
//	JTextField pf=new JTextField();
	
	private

	JButton submit=new JButton("SUBMIT");
	JButton resetbtn=new JButton("CLEAN");
	JButton change=new JButton("SAVE CHANGE");
	
	
	
	

	
	//menu
	

	
	public AddNewBook() {
		createWindow();
		setLocationAndSize();
		AddComponenttoFrame();
		addActionEvent();
	}
	private void addActionEvent() {
		resetbtn.addActionListener(this);
		submit.addActionListener(this);
	
//		update.addActionListener(this);
		change.addActionListener(this);
		
	}

	private void AddComponenttoFrame() {
		
		frame.add(formtitle);
		frame.add(reg_lb);
		frame.add(NAME);
		
		frame.add(fname_label);
		frame.add(price_f);
		
		frame.add(lname_label);
		frame.add(lname_f);
		
		frame.add(id_label);
		frame.add(pid_f);
		
		frame.add(CAT);
		frame.add(CATF);
		
		frame.add(Edition);
		frame.add(EditionF);


		frame.add(resetbtn);
		frame.add(submit);
		frame.add(change);
		

	}
	private void setLocationAndSize() {
		formtitle.setBounds(180, 60, 200, 30);
		
		reg_lb.setBounds(20, 100, 200, 30);
		NAME.setBounds(180, 100, 200, 30);
		
		fname_label.setBounds(20, 150, 200, 30);
		price_f.setBounds(180, 150, 200, 30);
		
		lname_label.setBounds(20, 200, 200, 30);
		lname_f.setBounds(180, 200, 200, 30);
		
		id_label.setBounds(20, 250, 200, 30);
		pid_f.setBounds(180, 250, 200, 30);
		
		CAT.setBounds(20, 300, 200, 30);
		CATF.setBounds(180, 300, 200, 30);
		
		Edition.setBounds(20, 350, 200, 30);
		EditionF.setBounds(180, 350, 200, 30);
//		


		submit.setBounds(20, 400, 80, 30);
		resetbtn.setBounds(110, 400, 80, 30);
		change.setBounds(200, 400, 120, 30);

	}
	private void createWindow() {
		frame=new JFrame();
		frame.setTitle("form");
		frame.setBounds(10,10,790,690);
		frame.getContentPane().setBackground(Color.white);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setResizable(true);
//		update.getRootPane().setBackground(Color.gray);
	}
	@SuppressWarnings("unlikely-arg-type")
	@Override
	
	public void actionPerformed(ActionEvent e) {
	    if (e.getSource() == submit) {
	        try {
	            // Load the MySQL JDBC driver
	            Class.forName("com.mysql.jdbc.Driver");

	            // Establish a connection to the database
	            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost/librarymanagement", "root", "");
	                 Statement st = con.createStatement()) {

	                // Get values from text fields
	                String reg = NAME.getText();
	                String fname = price_f.getText();
	                String lname = lname_f.getText();
	                String phone = pid_f.getText();

	                String query = "INSERT INTO product (isbn, title, author, subject, publisher, category, edition, shelfNo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	                try (PreparedStatement pst = con.prepareStatement(query)) {
	                    pst.setString(1, pid_f.getText());  // Assuming pid_f is ISBN
	                    pst.setString(2, NAME.getText());
	                    pst.setString(3, price_f.getText());
	                    pst.setString(4, lname_f.getText());
	                    pst.setString(5, pid_f.getText());
	                    pst.setString(6, CATF.getText());
	                    pst.setString(7, EditionF.getText());
	                    pst.setString(8, "2023");

	                    // Assuming shelfNo is not provided in the UI, you might need to add it

	                    pst.executeUpdate();

	                    JOptionPane.showMessageDialog(null, "Submit Successful");
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                    JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
	                }
	            }

	        } catch (ClassNotFoundException | SQLException ex) {
	            // Handle exceptions, display an error message, or log the exception
	            ex.printStackTrace();
	            JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
	        }
	    }
	

else if(e.getSource()==resetbtn) {
		NAME.setText("");
		price_f.setText("");
		lname_f.setText("");
		pid_f.setText("");
//		email_f.setText("");
//		pf.setText("");
		
	}


	}
	
	

//	
	
	
	
public static void main(String []args) {
	AddNewBook anyname=new AddNewBook();
}

@Override
public void menuDeselected(MenuEvent e) {
	// TODO Auto-generated method stub
	
}
@Override
public void menuCanceled(MenuEvent e) {
	// TODO Auto-generated method stub
	
}
public void setVisible(boolean b) {
	// TODO Auto-generated method stub
	
}



}
