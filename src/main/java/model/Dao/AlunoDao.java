/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.Dao;

import model.Aluno;

/**
 *
 * @author $Carlos Cordeiro <carloscordeiroconsultor@gmail.com>
 */


public interface AlunoDao extends DaoGenerico<Aluno>{
  
    public boolean logarAluno(String login,String senha); 
    public Aluno recuperarCpf(String cpf);
}
