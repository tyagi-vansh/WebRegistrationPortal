package com.example.demoweb.dao;

import com.example.demoweb.entity.Details;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WebRepository extends JpaRepository<Details,Integer> {

    Details findById(int id);
    Details findByEmail(String email);
}
