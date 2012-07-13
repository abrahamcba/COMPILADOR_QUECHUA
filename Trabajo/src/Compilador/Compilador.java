/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Compilador;

/**
 *
 * @author Admin
 */
public class Compilador {
public static void main(String[] args) {
        try {
            parser p = new parser(new Yylex(new java.io.FileInputStream("C:\\q\\Trabajo\\src\\Compilador\\entrada.txt")));
            p.parse();
        }
        catch(Exception e) { System.out.println(e.getMessage());}
    }
}
