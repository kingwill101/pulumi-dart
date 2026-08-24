// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_filter.dart';

/// {@template pulumi_index_get_ai_gateway_get_ai_gateway_args_doc}
/// Arguments for getAiGateway.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_gateway_get_ai_gateway_args_doc}
class GetAiGatewayArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAiGatewayFilter?>? filter;
  /// gateway id
  final pulumi.Input<String?>? id;

  /// Creates a new [GetAiGatewayArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [id] gateway id
  const GetAiGatewayArgs({
    this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAiGatewayFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetAiGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAiGatewayFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
