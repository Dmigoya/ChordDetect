/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chorddetect;

import java.util.List;

/**
 *
 * @author Davex
 */
public abstract class Useful {
    
    public static String[] convertListToString(List<String> list){
        String []res = new String[list.size()];
        for(int i=0; i < res.length ; i++){
            res[i] = list.get(i);
        }
        return res;
    }
    
    public static String[] restCharacter(String[] strings){
        String[] result = new String[strings.length];
        int i = 0;
        for (String tmp : strings){
            String tmp2 = tmp.substring(1, tmp.length()-1);
            result[i] = tmp2;
            i++;
        }
        return result;
    }
    
    public static String restCharacter(String string){
        return string.substring(1, string.length()-1);
    }
}
