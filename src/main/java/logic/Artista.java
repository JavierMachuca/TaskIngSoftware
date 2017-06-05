/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

import java.util.ArrayList;

/**
 *
 * @author javier
 */
public class Artista {
    
    private int id;
    private String nombre;
    private Estilo estilo;
    ArrayList<Cancion> listCanciones;
    
    public Artista(int identificador ,String nombre , Estilo estilo) {
        this.id = identificador;
        this.nombre = nombre;
        this.estilo = estilo;
        this.listCanciones = new ArrayList<>();
    }
    
    public void agregarCancion(String nombreCancion , int duracion){
        this.listCanciones.add(new Cancion(nombreCancion, duracion));
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Estilo getEstilo() {
        return estilo;
    }

    public void setEstilo(Estilo estuli) {
        this.estilo = estuli;
    }
    
    
}
