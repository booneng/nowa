///
//  Generated code. Do not modify.
//  source: server/proto/nowa.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'nowa.pbenum.dart';

export 'nowa.pbenum.dart';

class Restaurant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Restaurant', package: const $pb.PackageName('nowa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'restaurantId', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..pc<MenuItem>(3, 'menuItems', $pb.PbFieldType.PM, subBuilder: MenuItem.create)
    ..hasRequiredFields = false
  ;

  Restaurant._() : super();
  factory Restaurant() => create();
  factory Restaurant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Restaurant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Restaurant clone() => Restaurant()..mergeFromMessage(this);
  Restaurant copyWith(void Function(Restaurant) updates) => super.copyWith((message) => updates(message as Restaurant));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Restaurant create() => Restaurant._();
  Restaurant createEmptyInstance() => create();
  static $pb.PbList<Restaurant> createRepeated() => $pb.PbList<Restaurant>();
  @$core.pragma('dart2js:noInline')
  static Restaurant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Restaurant>(create);
  static Restaurant _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get restaurantId => $_getIZ(0);
  @$pb.TagNumber(1)
  set restaurantId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestaurantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestaurantId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<MenuItem> get menuItems => $_getList(2);
}

class MenuItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MenuItem', package: const $pb.PackageName('nowa'), createEmptyInstance: create)
    ..aInt64(1, 'itemId')
    ..e<MenuItem_Status>(2, 'status', $pb.PbFieldType.OE, defaultOrMaker: MenuItem_Status.UNKNOWN, valueOf: MenuItem_Status.valueOf, enumValues: MenuItem_Status.values)
    ..aOS(3, 'name')
    ..aOS(4, 'description')
    ..hasRequiredFields = false
  ;

  MenuItem._() : super();
  factory MenuItem() => create();
  factory MenuItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MenuItem clone() => MenuItem()..mergeFromMessage(this);
  MenuItem copyWith(void Function(MenuItem) updates) => super.copyWith((message) => updates(message as MenuItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuItem create() => MenuItem._();
  MenuItem createEmptyInstance() => create();
  static $pb.PbList<MenuItem> createRepeated() => $pb.PbList<MenuItem>();
  @$core.pragma('dart2js:noInline')
  static MenuItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuItem>(create);
  static MenuItem _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  MenuItem_Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(MenuItem_Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class Order_OrderItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Order.OrderItem', package: const $pb.PackageName('nowa'), createEmptyInstance: create)
    ..aOM<MenuItem>(1, 'menuItem', subBuilder: MenuItem.create)
    ..a<$core.int>(2, 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Order_OrderItem._() : super();
  factory Order_OrderItem() => create();
  factory Order_OrderItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Order_OrderItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Order_OrderItem clone() => Order_OrderItem()..mergeFromMessage(this);
  Order_OrderItem copyWith(void Function(Order_OrderItem) updates) => super.copyWith((message) => updates(message as Order_OrderItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Order_OrderItem create() => Order_OrderItem._();
  Order_OrderItem createEmptyInstance() => create();
  static $pb.PbList<Order_OrderItem> createRepeated() => $pb.PbList<Order_OrderItem>();
  @$core.pragma('dart2js:noInline')
  static Order_OrderItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Order_OrderItem>(create);
  static Order_OrderItem _defaultInstance;

  @$pb.TagNumber(1)
  MenuItem get menuItem => $_getN(0);
  @$pb.TagNumber(1)
  set menuItem(MenuItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMenuItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenuItem() => clearField(1);
  @$pb.TagNumber(1)
  MenuItem ensureMenuItem() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);
}

class Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Order', package: const $pb.PackageName('nowa'), createEmptyInstance: create)
    ..aInt64(1, 'orderId')
    ..aInt64(2, 'userId')
    ..a<$core.int>(3, 'restaurantId', $pb.PbFieldType.O3)
    ..e<Order_Status>(4, 'status', $pb.PbFieldType.OE, defaultOrMaker: Order_Status.UNKNOWN, valueOf: Order_Status.valueOf, enumValues: Order_Status.values)
    ..pc<Order_OrderItem>(5, 'orderItem', $pb.PbFieldType.PM, subBuilder: Order_OrderItem.create)
    ..hasRequiredFields = false
  ;

  Order._() : super();
  factory Order() => create();
  factory Order.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Order.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Order clone() => Order()..mergeFromMessage(this);
  Order copyWith(void Function(Order) updates) => super.copyWith((message) => updates(message as Order));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Order create() => Order._();
  Order createEmptyInstance() => create();
  static $pb.PbList<Order> createRepeated() => $pb.PbList<Order>();
  @$core.pragma('dart2js:noInline')
  static Order getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Order>(create);
  static Order _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get orderId => $_getI64(0);
  @$pb.TagNumber(1)
  set orderId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get restaurantId => $_getIZ(2);
  @$pb.TagNumber(3)
  set restaurantId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRestaurantId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRestaurantId() => clearField(3);

  @$pb.TagNumber(4)
  Order_Status get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(Order_Status v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Order_OrderItem> get orderItem => $_getList(4);
}

