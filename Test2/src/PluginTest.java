import java.applet.Applet;
import java.awt.Graphics;


public class PluginTest extends Applet {
	String name;
	
	public void init(){
		   name=getParameter("name");
	}
	public void paint(Graphics g){
		g.drawString(name, 10, 10);
	}
}
