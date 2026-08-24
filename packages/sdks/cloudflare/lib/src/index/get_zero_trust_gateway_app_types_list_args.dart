// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_app_types_list_get_zero_trust_gateway_app_types_list_args_doc}
/// Arguments for getZeroTrustGatewayAppTypesList.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_app_types_list_get_zero_trust_gateway_app_types_list_args_doc}
class GetZeroTrustGatewayAppTypesListArgs {
  /// Provide the identifier string.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustGatewayAppTypesListArgs].
  /// [accountId] Provide the identifier string.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustGatewayAppTypesListArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustGatewayAppTypesListArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayAppTypesListArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
