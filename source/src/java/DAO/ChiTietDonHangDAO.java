/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import POJOs.Chitietdonhang;
import POJOs.Sanpham;
import Util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Duong Dieu Phap
 */
public class ChiTietDonHangDAO {
    public static List<Chitietdonhang> TimSanPham(int masanpham) 
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();

            String hql = "from Chitietdonhang t where t.trangthai = 1 and t.masanpham =:masanpham";
            Query q = session.createQuery(hql);
            q.setInteger("masanpham", masanpham);
            
            List<Chitietdonhang> ds = q.list();
            return ds;

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        }
        return null;
    }
}
