package productcrudapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import productcrudapp.entities.Product;

import javax.transaction.Transactional;
import java.util.List;

@Controller
public class ProductDao {

@Autowired
private HibernateTemplate hibernateTemplate;

//create
@Transactional
    public  void  createProduct(Product product)
    {
        this.hibernateTemplate.saveOrUpdate(product);
    }


    //get all products
    public List<Product>getProducts()
    {
       List<Product>products= this.hibernateTemplate.loadAll(Product.class);
       return products;
    }

    //Delete the single product
    @Transactional
    public void deleteProduct(int pid)
    {
        Product p=this.hibernateTemplate.load(Product.class,pid);
        this.hibernateTemplate.delete(p);
    }

    //get the singe product
    public Product getProduct(int pid)
    {
       return  this.hibernateTemplate.get(Product.class,pid);
    }


    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
