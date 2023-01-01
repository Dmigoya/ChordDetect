/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chorddetect;

/**
 *
 * @author Davex
 */
public class ChordDetect {


    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        String[] files = new String[5];
        files[0] = "logic/basicDef.pl";
        files[1] = "logic/chordsDef.pl";
        files[2] = "logic/generalUseful.pl";
        files[3] = "logic/userfulChord.pl";
        files[4] = "logic/tonalityDef.pl";
        Conexion c = new Conexion(files);
        JFrame jFrame = new JFrame(c);
        jFrame.setVisible(true);
    }

}
