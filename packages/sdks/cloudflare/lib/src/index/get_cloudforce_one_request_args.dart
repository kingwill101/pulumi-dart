// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloudforce_one_request_filter.dart';

/// {@template pulumi_index_get_cloudforce_one_request_get_cloudforce_one_request_args_doc}
/// Arguments for getCloudforceOneRequest.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloudforce_one_request_get_cloudforce_one_request_args_doc}
class GetCloudforceOneRequestArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetCloudforceOneRequestFilter?>? filter;
  /// UUID.
  final pulumi.Input<String?>? requestId;

  /// Creates a new [GetCloudforceOneRequestArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [requestId] UUID.
  const GetCloudforceOneRequestArgs({
    this.accountId,
    this.filter,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetCloudforceOneRequestFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'requestId': ?requestId,
    };
  }

  factory GetCloudforceOneRequestArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetCloudforceOneRequestFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
