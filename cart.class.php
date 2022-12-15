<?php 
if(!session_id()){
	session_start();
}


class Cart{
	protected $cart_items=array();
	public function __construct(){
		if(!isset($_SESSION["cart"])){
			$_SESSION["cart"]=[];
		}

		$this->cart_items=$_SESSION["cart"];
	}

	public function get_ids(){
		$ids=[];
		foreach($this->cart_items as $item){
			$ids[]=$item["id"];
		}
		return $ids;
	}

	public function add_to_cart($item=[]){
		if(isset($item["id"],$item["name"],$item["price"],$item["qty"],$item["total"])){
			$ids=$this->get_ids();
			if(in_array($item["id"],$ids)){	
				$this->cart_items[$item["id"]]["qty"]+=$item["qty"];
				$this->cart_items[$item["id"]]["total"]=$this->cart_items[$item["id"]]["qty"]*$item["price"];
			}else{

				$this->cart_items[$item["id"]]=$item;
			}

			$this->commit();
			return true;
		}else{
			return false;
		}
	}


	public function update_cart($item=[]){
		$this->cart_items[$item["id"]]["qty"]=$item["qty"];
		$this->cart_items[$item["id"]]["total"]=$this->cart_items[$item["id"]]["qty"]*$this->cart_items[$item["id"]]["price"];
		$this->commit();
		return true;
	}



	public function remove($id){
		unset($this->cart_items[$id]);
		$this->commit();
	}


	public function get_cart_total(){
		$sum=0;
		foreach($this->cart_items as $item){
			$sum+=$item["total"];
		}
		return $sum;
	}


	public function get_cart_count(){
		return count($this->cart_items);
	}


	public function commit(){
		$_SESSION["cart"]=$this->cart_items;
	}


	public function destroy(){
		$this->cart_contents = array('cart_total' => 0, 'cart_items_count' => 0); 
		unset($_SESSION["cart"]);
	}


	public function get_item($id){
		return $this->cart_items[$id];
	}	

	
	public function get_all_items(){
		return $this->cart_items;
	}
}

?>