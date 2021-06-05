package DiamonShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;

@Service
public class BillsServiceImpl {
	@Autowired
	private BillsDao billsDao;
	
	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}
	public void AddbillsDetail(HashMap<Long, CartDto> carts) {
		
		long idBills = billsDao.GetIDLastBills();
		
		for(Map.Entry<Long, CartDto> itemCarts : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCarts.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCarts.getValue().getQuanty());
			billDetail.setTotal(itemCarts.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}
}
