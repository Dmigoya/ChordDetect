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

    public String getChord(String chord) {
        q = new Query("chord", new Term[]{new Variable("X"), new Atom(chord)});
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

    public String getNoteName(String note) {
        q = new Query("note", new Term[]{new Atom(note), new Variable("X")});
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

    public String getNote(String note) {
        q = new Query("note", new Term[]{new Variable("X"), new Atom(note)});
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

    public String[] getNotes() {
        q = new Query("note", new Term[]{new Variable("X"), new Variable("Y")});
        List<String> resultado = new ArrayList<>();

        if (!q.hasSolution()) {
            resultado.add("No se encontraron soluciones");
        } else {
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                resultado.add(solucion.get("X").toString());
            }
        }
        String[] res = Useful.convertListToString(resultado);
        res = Useful.restCharacter(res);
        return res;
    }

    public String[] getNotesNames() {
        q = new Query("note", new Term[]{new Variable("X"), new Variable("Y")});
        List<String> resultado = new ArrayList<>();

        if (!q.hasSolution()) {
            resultado.add("No se encontraron soluciones");
        } else {
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                resultado.add(solucion.get("Y").toString());
            }
        }
        String[] res = Useful.convertListToString(resultado);
        res = Useful.restCharacter(res);
        return res;
    }

    public String[] getChordForNotes(String[] notes) {
        if (notes.length == 3) {
            consulta = String.format("chordWithNotes(Name, NameL, ['%s', '%s', '%s'])",
                    notes[0], notes[1], notes[2]);
        } else if (notes.length == 4) {
            consulta = String.format("chordWithNotes(Name, NameL, ['%s', '%s', '%s', '%s'])",
                    notes[0], notes[1], notes[2], notes[3]);
        } else {
            return null;
        }
        q = new Query(consulta);

        String[] resultado = new String[2];
        if (!q.hasSolution()) {
            resultado[0] = "No se encontraron soluciones";
            resultado[1] = "";
        } else {
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                resultado[0] = solucion.get("Name").toString();
                resultado[1] = solucion.get("NameL").toString();
            }
        }
        return resultado;
    }

    public String[] getNotesForChord(String chord) {
        consulta = String.format("chordWithNotes('%s', NameL, Notes)", chord);
        q = new Query(consulta);

        String[] resultado = new String[2];
        if (!q.hasSolution()) {
            resultado[0] = "No se encontraron soluciones";
        } else {
            boolean flat = false;
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                if (!flat) {
                    flat = !flat;
                    continue;
                }
                resultado[0] = solucion.get("NameL").toString();
                resultado[1] = solucion.get("Notes").toString();
                resultado[1] = Detector.detect(resultado[1]);
            }
        }
        return resultado;
    }

    public String[] getNameChords() {
        consulta = "chord(_, NameL)";
        q = new Query(consulta);

        List<String> resultado = new ArrayList<>();
        if (!q.hasSolution()) {
            resultado.add("No se encontraron soluciones");
        } else {
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                resultado.add(solucion.get("NameL").toString());
            }
        }
        String[] res = Useful.convertListToString(resultado);
        res = Useful.restCharacter(res);
        return res;
    }

    public String[] getChords() {
        consulta = "chord(NameL, _)";
        q = new Query(consulta);

        List<String> resultado = new ArrayList<>();
        if (!q.hasSolution()) {
            resultado.add("No se encontraron soluciones");
        } else {
            while (q.hasMoreSolutions()) {
                solucion = q.nextSolution();
                resultado.add(solucion.get("NameL").toString());
            }
        }
        String[] res = Useful.convertListToString(resultado);
        res = Useful.restCharacter(res);
        return res;
    }
}
