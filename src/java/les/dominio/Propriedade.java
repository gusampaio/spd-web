/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package les.dominio;

/**
 *
 * @author gustavo
 */
public class Propriedade extends EntidadeDominio{
        
    public Propriedade(){
        
    }
    
    public Propriedade(String descricao, int id){
        this.descricao = descricao;
        super.setId(id);
    }
    
    private String descricao;

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}
