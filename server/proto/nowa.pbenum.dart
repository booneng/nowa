///
//  Generated code. Do not modify.
//  source: server/proto/nowa.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MenuItem_Status extends $pb.ProtobufEnum {
  static const MenuItem_Status UNKNOWN = MenuItem_Status._(0, 'UNKNOWN');
  static const MenuItem_Status ACTIVE = MenuItem_Status._(1, 'ACTIVE');
  static const MenuItem_Status SOLD_OUT = MenuItem_Status._(2, 'SOLD_OUT');

  static const $core.List<MenuItem_Status> values = <MenuItem_Status> [
    UNKNOWN,
    ACTIVE,
    SOLD_OUT,
  ];

  static final $core.Map<$core.int, MenuItem_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MenuItem_Status valueOf($core.int value) => _byValue[value];

  const MenuItem_Status._($core.int v, $core.String n) : super(v, n);
}

class Order_Status extends $pb.ProtobufEnum {
  static const Order_Status UNKNOWN = Order_Status._(0, 'UNKNOWN');
  static const Order_Status ACTIVE = Order_Status._(1, 'ACTIVE');
  static const Order_Status COMPLETED = Order_Status._(2, 'COMPLETED');
  static const Order_Status CANCELLED = Order_Status._(3, 'CANCELLED');

  static const $core.List<Order_Status> values = <Order_Status> [
    UNKNOWN,
    ACTIVE,
    COMPLETED,
    CANCELLED,
  ];

  static final $core.Map<$core.int, Order_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_Status valueOf($core.int value) => _byValue[value];

  const Order_Status._($core.int v, $core.String n) : super(v, n);
}

