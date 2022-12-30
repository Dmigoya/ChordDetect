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
public abstract class Detector {

    public static char[] chords = new char[]{'C', 'D', 'E', 'F', 'G', 'A', 'B'};

    public static String detect(String chords) {
        String result = "";
        boolean isChordFlat = false;
        for (char c : chords.toCharArray()) {
            if (!isChordFlat) {
                if (search(c)) {
                    result += c;
                    isChordFlat = true;
                }
            }else{
                if (c != '\''){
                    result += c;
                }else{
                    isChordFlat = false;
                    result += "-";
                }
            }
        }
        return result.substring(0, result.length()-1);
    }

    private static boolean search(char c) {
        for (char character : chords) {
            if (character == c) {
                return true;
            }
        }
        return false;
    }
}
