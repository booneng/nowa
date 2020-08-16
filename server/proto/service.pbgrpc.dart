///
//  Generated code. Do not modify.
//  source: server/proto/service.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class NowaClient extends $grpc.Client {
  static final _$getRestaurant =
      $grpc.ClientMethod<$0.GetRestaurantRequest, $0.GetRestaurantResponse>(
          '/nowa.Nowa/GetRestaurant',
          ($0.GetRestaurantRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRestaurantResponse.fromBuffer(value));

  NowaClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.GetRestaurantResponse> getRestaurant(
      $0.GetRestaurantRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getRestaurant, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NowaServiceBase extends $grpc.Service {
  $core.String get $name => 'nowa.Nowa';

  NowaServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetRestaurantRequest, $0.GetRestaurantResponse>(
            'GetRestaurant',
            getRestaurant_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetRestaurantRequest.fromBuffer(value),
            ($0.GetRestaurantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetRestaurantResponse> getRestaurant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetRestaurantRequest> request) async {
    return getRestaurant(call, await request);
  }

  $async.Future<$0.GetRestaurantResponse> getRestaurant(
      $grpc.ServiceCall call, $0.GetRestaurantRequest request);
}
