package POJOs;
// Generated Sep 24, 2013 9:20:03 AM by Hibernate Tools 3.2.1.GA


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Danhmucsanpham generated by hbm2java
 */
public class Danhmucsanpham  implements java.io.Serializable {


     private int madanhmuc;
     private Serializable tendanhmuc;
     private Integer trangthai;
     private Set<Sanpham> sanphams = new HashSet<Sanpham>(0);

    public Danhmucsanpham() {
    }

	
    public Danhmucsanpham(int madanhmuc) {
        this.madanhmuc = madanhmuc;
    }
    public Danhmucsanpham(int madanhmuc, Serializable tendanhmuc, Integer trangthai, Set<Sanpham> sanphams) {
       this.madanhmuc = madanhmuc;
       this.tendanhmuc = tendanhmuc;
       this.trangthai = trangthai;
       this.sanphams = sanphams;
    }
   
    public int getMadanhmuc() {
        return this.madanhmuc;
    }
    
    public void setMadanhmuc(int madanhmuc) {
        this.madanhmuc = madanhmuc;
    }
    public Serializable getTendanhmuc() {
        return this.tendanhmuc;
    }
    
    public void setTendanhmuc(Serializable tendanhmuc) {
        this.tendanhmuc = tendanhmuc;
    }
    public Integer getTrangthai() {
        return this.trangthai;
    }
    
    public void setTrangthai(Integer trangthai) {
        this.trangthai = trangthai;
    }
    public Set<Sanpham> getSanphams() {
        return this.sanphams;
    }
    
    public void setSanphams(Set<Sanpham> sanphams) {
        this.sanphams = sanphams;
    }




}


