package POJOs;
// Generated Sep 24, 2013 9:20:03 AM by Hibernate Tools 3.2.1.GA


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Sanpham generated by hbm2java
 */
public class Sanpham  implements java.io.Serializable {


     private int masanpham;
     private Danhmucsanpham danhmucsanpham;
     private Serializable tensanpham;
     private Serializable hinhanh;
     private Integer soluong;
     private Double dongia;
     private Integer trangthai;
     private Set<Chitietdonhang> chitietdonhangs = new HashSet<Chitietdonhang>(0);

    public Sanpham() {
    }

	
    public Sanpham(int masanpham) {
        this.masanpham = masanpham;
    }
    public Sanpham(int masanpham, Danhmucsanpham danhmucsanpham, Serializable tensanpham, Serializable hinhanh, Integer soluong, Double dongia, Integer trangthai, Set<Chitietdonhang> chitietdonhangs) {
       this.masanpham = masanpham;
       this.danhmucsanpham = danhmucsanpham;
       this.tensanpham = tensanpham;
       this.hinhanh = hinhanh;
       this.soluong = soluong;
       this.dongia = dongia;
       this.trangthai = trangthai;
       this.chitietdonhangs = chitietdonhangs;
    }
   
    public int getMasanpham() {
        return this.masanpham;
    }
    
    public void setMasanpham(int masanpham) {
        this.masanpham = masanpham;
    }
    public Danhmucsanpham getDanhmucsanpham() {
        return this.danhmucsanpham;
    }
    
    public void setDanhmucsanpham(Danhmucsanpham danhmucsanpham) {
        this.danhmucsanpham = danhmucsanpham;
    }
    public Serializable getTensanpham() {
        return this.tensanpham;
    }
    
    public void setTensanpham(Serializable tensanpham) {
        this.tensanpham = tensanpham;
    }
    public Serializable getHinhanh() {
        return this.hinhanh;
    }
    
    public void setHinhanh(Serializable hinhanh) {
        this.hinhanh = hinhanh;
    }
    public Integer getSoluong() {
        return this.soluong;
    }
    
    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }
    public Double getDongia() {
        return this.dongia;
    }
    
    public void setDongia(Double dongia) {
        this.dongia = dongia;
    }
    public Integer getTrangthai() {
        return this.trangthai;
    }
    
    public void setTrangthai(Integer trangthai) {
        this.trangthai = trangthai;
    }
    public Set<Chitietdonhang> getChitietdonhangs() {
        return this.chitietdonhangs;
    }
    
    public void setChitietdonhangs(Set<Chitietdonhang> chitietdonhangs) {
        this.chitietdonhangs = chitietdonhangs;
    }




}


