package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaseDatos {
	Connection conexion;
	PreparedStatement pstm;

	String connectionUrl  = "jdbc:sqlserver://CYBERCUP-PC:1433;" +
			"databaseName=FINAL;user=New;password=123;";
	
	public BaseDatos() 
	{
		super();
			try {	
				
				DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
				
				conexion=DriverManager.getConnection(connectionUrl);
				
			}catch(SQLException e) {
				e.printStackTrace();
			}
	}
	public void CrearTabla() {
		String sql="CREATE TABLE Evento (id int,descripcion varchar(50),Fecha varchar(25),Estado int)";
		try {
			pstm = conexion.prepareStatement(sql);
			pstm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	List<Evento> ListaEventos;
	public void Tabla () {
		ListaEventos= new ArrayList<Evento>();
		try {
			for(int i=1;i<6;i++) {
				Evento Datos = new Evento(i,"Fiesta "+i,i+"/"+(i*2)+"/2020",i);
				String sql="INSERT INTO Evento values("+i+",'Fiesta','"+i+"/"+(i*2)+"/2020',"+i+")";
				pstm = conexion.prepareStatement(sql);
				pstm.execute();
				ListaEventos.add(Datos);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Evento> consultaInfo ()
	{
		return ListaEventos;
	}
	
}
