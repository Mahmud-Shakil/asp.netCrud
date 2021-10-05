using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projects.DAL
{
    public class EFGateWay
    {
        ProjectDBEntities db = new ProjectDBEntities();
        public IQueryable<Customer> GetCustomerList()
        {
            return from cus in db.Customers select cus;
        }
        public Customer GetCustomer(int id)
        {
            Customer cus = db.Customers.FirstOrDefault(c => c.CustomerId==id);
            return cus;
        }
        public void InsertCustomer(Customer obj)
        {
            db.Customers.Add(obj);
            db.SaveChanges();
        }
        public int UpdateCustomer(Customer upobj)
        {
            int count = 0;
            Customer obj = GetCustomer(upobj.CustomerId);
            obj.CustomerName = upobj.CustomerName;
            obj.Email = upobj.Email;
            obj.Address = upobj.Address;
            obj.MobileNo = upobj.MobileNo;
            obj.PurchaseDate = upobj.PurchaseDate;
            obj.UnitPrice = upobj.UnitPrice;
            obj.ImageName = upobj.ImageName;
            obj.ImageUrl = upobj.ImageUrl;
            obj.ProductId = upobj.ProductId;
            obj.StoreId = upobj.StoreId;
            obj.SupplierId = upobj.SupplierId;
            count = db.SaveChanges();
            return count;
        }
        public int DeleteCustomer(int id)
        {
            int count = 0;
            Customer delCustomer = GetCustomer(id);
            db.Customers.Remove(delCustomer);
            count = db.SaveChanges();
            return count;
        }
    }
}