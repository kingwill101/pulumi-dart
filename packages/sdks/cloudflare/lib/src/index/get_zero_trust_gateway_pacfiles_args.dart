// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_pacfiles_get_zero_trust_gateway_pacfiles_args_doc}
/// Arguments for getZeroTrustGatewayPacfiles.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_pacfiles_get_zero_trust_gateway_pacfiles_args_doc}
class GetZeroTrustGatewayPacfilesArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustGatewayPacfilesArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustGatewayPacfilesArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustGatewayPacfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPacfilesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
