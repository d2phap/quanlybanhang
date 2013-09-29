/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import POJOs.Danhmucsanpham;
import Util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Duong Dieu Phap
 */
public class DanhMucDAO {
    public static List<Danhmucsanpham> TimDanhMuc(String ten) 
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();

            String hql = "from Danhmucsanpham t where t.trangthai = 1 and t.tendanhmuc like :ten";
            Query q = session.createQuery(hql);
            q.setString("ten", "%" + ten + "%");
            
            List<Danhmucsanpham> ds = q.list();
            return ds;

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        }
        return null;
    }
    
    public static boolean XoaDanhMuc(int id) 
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            
            //1. Lay Sanpham co madanhmucsanpham = x
            
            //2. Lay Chitietdonhang co masanpham = x
            
            //3. Xoa ds Chitietdonhang
            
            //4. Xoa ds Sanpham
            
            //5. Xoa Danhmuc
            
            
            
            
            return true;

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        }
        return false;
    }
    
    public static Danhmucsanpham LayDanhMuc(int id)
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();

            String hql = "from Danhmucsanpham t where t.trangthai = 1 and t.madanhmuc =:madanhmuc";
            Query q = session.createQuery(hql);
            q.setInteger("madanhmuc", id);
            
            return (Danhmucsanpham) q.uniqueResult();

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        }
        return null;
    }
    
}
