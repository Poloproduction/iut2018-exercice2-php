CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `subtotal` decimal(12,4) unsigned DEFAULT '0.0000',
  `subtotal_incl_tax` decimal(12,4) unsigned DEFAULT '0.0000',
  `discount_amount` decimal(12,4) unsigned DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) unsigned DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) unsigned DEFAULT '0.0000',
  `tax_amount` decimal(12,4) unsigned DEFAULT '0.0000',
  `grand_total` decimal(12,4) unsigned DEFAULT '0.0000',
  `total_item_ordered` int(10) unsigned DEFAULT '0',
  `total_qty_ordered` int(10) unsigned DEFAULT '0',
  `coupon_code` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `IDX_ORDER_CUSTOMER` (`customer_id`),
  KEY `IDX_ORDER_QUOTE` (`quote_id`),
  CONSTRAINT `FK_ORDER_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`quote_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
