/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import POJOs.Danhmucsanpham;
import POJOs.Sanpham;
import Util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Duong Dieu Phap
 */
public class SanPhamDAO {
    public static List<Sanpham> TimSanPham(String ten) 
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();

            String hql = "from Sanpham t where t.trangthai = 1 and t.tensanpham like :ten";
            Query q = session.createQuery(hql);
            q.setString("ten", "%" + ten + "%");
            
            List<Sanpham> ds = q.list();
            return ds;

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        }
        return null;
    }
    
    public static List<Sanpham> TimSanPham(int madanhmuc) 
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();

            String hql = "from Sanpham t where t.trangthai = 1 and t.madanhmucsanpham =:madanhmuc";
            Query q = session.createQuery(hql);
            q.setInteger("madanhmuc", madanhmuc);
            
            List<Sanpham> ds = q.list();
            return ds;

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        }
        return null;
    }
}
