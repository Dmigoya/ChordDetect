package chorddetect;

/**
 *
 * @author hlopez
 */
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.swing.JOptionPane;
import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;

/**
 * Se encarga de gestionar la consulta de las bases de conocimiento.
 */
public class Conexion {

    private String consulta;
    private Query q;
    private Map<String, Term> solucion;

    public Conexion(String[] name) {
        for (String f : name) {
            consulta = "consult('" + f + "')";
            q = new Query(consulta);
            if (!q.hasSolution()) {
                JOptionPane.showMessageDialog(null, "No encuentra la base de conocimiento:" + f, "ERROR", JOptionPane.ERROR);
            }
        }
    }
    
    public String getChordName(String chord) {
        q = new Query("chord", new Term[]{new Atom(chord), new Variable("X")});
        List<String> resultado = new ArrayList<>();

        if (!q.hasSolution()) {
            resultado.add("No se encontraron soluciones");
        } else {
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                resultado.add(solucion.get("X") + "\n");
            }
        }
        return resultado.get(0);
    }
}
