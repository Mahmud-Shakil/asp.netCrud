using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projects.Models
{
    public class Customer1
    {
        public int CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string MobileNo { get; set; }
        public decimal UnitPrice { get; set; }
        public string ImageName { get; set; }
        public string ImageUrl { get; set; }
        public int ProductId { get; set; }
        public DateTime PurchaseDate { get; set; }
        public string ProductName { get; set; }
        public int StoreId { get; set; }
        public string StoreNumber { get; set; }
        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
    }
}