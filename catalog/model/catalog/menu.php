<?php
class ModelCatalogMenu extends Model {
	public function getMenus($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "menu WHERE parent_id = '" . (int)$parent_id . "' ORDER BY sort_order");

		return $query->rows;
	}
}	