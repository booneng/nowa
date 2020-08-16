///
//  Generated code. Do not modify.
//  source: server/proto/service.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'nowa.pb.dart' as $1;

class GetRestaurantRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetRestaurantRequest', package: const $pb.PackageName('nowa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'restaurantId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetRestaurantRequest._() : super();
  factory GetRestaurantRequest() => create();
  factory GetRestaurantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRestaurantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetRestaurantRequest clone() => GetRestaurantRequest()..mergeFromMessage(this);
  GetRestaurantRequest copyWith(void Function(GetRestaurantRequest) updates) => super.copyWith((message) => updates(message as GetRestaurantRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRestaurantRequest create() => GetRestaurantRequest._();
  GetRestaurantRequest createEmptyInstance() => create();
  static $pb.PbList<GetRestaurantRequest> createRepeated() => $pb.PbList<GetRestaurantRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRestaurantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRestaurantRequest>(create);
  static GetRestaurantRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get restaurantId => $_getIZ(0);
  @$pb.TagNumber(1)
  set restaurantId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestaurantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestaurantId() => clearField(1);
}

class GetRestaurantResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetRestaurantResponse', package: const $pb.PackageName('nowa'), createEmptyInstance: create)
    ..aOM<$1.Restaurant>(1, 'restaurant', subBuilder: $1.Restaurant.create)
    ..hasRequiredFields = false
  ;

  GetRestaurantResponse._() : super();
  factory GetRestaurantResponse() => create();
  factory GetRestaurantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRestaurantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetRestaurantResponse clone() => GetRestaurantResponse()..mergeFromMessage(this);
  GetRestaurantResponse copyWith(void Function(GetRestaurantResponse) updates) => super.copyWith((message) => updates(message as GetRestaurantResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRestaurantResponse create() => GetRestaurantResponse._();
  GetRestaurantResponse createEmptyInstance() => create();
  static $pb.PbList<GetRestaurantResponse> createRepeated() => $pb.PbList<GetRestaurantResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRestaurantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRestaurantResponse>(create);
  static GetRestaurantResponse _defaultInstance;

  @$pb.TagNumber(1)
  $1.Restaurant get restaurant => $_getN(0);
  @$pb.TagNumber(1)
  set restaurant($1.Restaurant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestaurant() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestaurant() => clearField(1);
  @$pb.TagNumber(1)
  $1.Restaurant ensureRestaurant() => $_ensure(0);
}

