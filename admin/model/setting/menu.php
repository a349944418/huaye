<?php
class ModelSettingMenu extends Model {

	public function addMenu($data) {

		$this->db->query("INSERT INTO " . DB_PREFIX . "menu SET parent_id = '" . (int)$data['parent_id'] . "', `name` = '" . $this->db->escape($data['name']) . "', `url` = '" . $this->db->escape($data['url']) . "', sort_order = '" . (int)$data['sort_order'] . "'");

		$menu_id = $this->db->getLastId();

		return $menu_id;
	}

	public function editMenu($menu_id, $data) {

		$this->db->query("UPDATE " . DB_PREFIX . "menu SET parent_id = '" . (int)$data['parent_id'] . "', `name` = '" . $this->db->escape($data['name']) . "', `url` = '" . $this->db->escape($data['url']) . "', sort_order = '" . (int)$data['sort_order'] . "' WHERE menu_id = " . (int)$menu_id);

	}

	public function deleteMenu($menu_id) {

		$this->db->query("DELETE FROM " . DB_PREFIX . "menu WHERE menu_id = '" . (int)$menu_id . "'");

		$this->cache->delete('category');

	}

	public function getMenu($menu_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "menu WHERE menu_id = '" . (int)$menu_id . "'");

		return $query->row;
	}

	public function getMenus($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "menu WHERE 1 = 1";

		if (!empty($data['filter_name'])) {
			$sql .= " AND name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sql .= " GROUP BY menu_id";

		$sort_data = array(
			'name',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalMenus() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "menu");

		return $query->row['total'];
	}
		
}
