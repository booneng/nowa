///
//  Generated code. Do not modify.
//  source: server/proto/nowa.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Restaurant$json = const {
  '1': 'Restaurant',
  '2': const [
    const {'1': 'restaurant_id', '3': 1, '4': 1, '5': 5, '10': 'restaurantId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'menu_items', '3': 3, '4': 3, '5': 11, '6': '.nowa.MenuItem', '10': 'menuItems'},
  ],
};

const MenuItem$json = const {
  '1': 'MenuItem',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.nowa.MenuItem.Status', '10': 'status'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
  '4': const [MenuItem_Status$json],
};

const MenuItem_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ACTIVE', '2': 1},
    const {'1': 'SOLD_OUT', '2': 2},
  ],
};

const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 1, '5': 3, '10': 'orderId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'restaurant_id', '3': 3, '4': 1, '5': 5, '10': 'restaurantId'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.nowa.Order.Status', '10': 'status'},
    const {'1': 'order_item', '3': 5, '4': 3, '5': 11, '6': '.nowa.Order.OrderItem', '10': 'orderItem'},
  ],
  '3': const [Order_OrderItem$json],
  '4': const [Order_Status$json],
};

const Order_OrderItem$json = const {
  '1': 'OrderItem',
  '2': const [
    const {'1': 'menu_item', '3': 1, '4': 1, '5': 11, '6': '.nowa.MenuItem', '10': 'menuItem'},
    const {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

const Order_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ACTIVE', '2': 1},
    const {'1': 'COMPLETED', '2': 2},
    const {'1': 'CANCELLED', '2': 3},
  ],
};

