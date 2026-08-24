// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_pacfile_get_zero_trust_gateway_pacfile_args_doc}
/// Arguments for getZeroTrustGatewayPacfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_pacfile_get_zero_trust_gateway_pacfile_args_doc}
class GetZeroTrustGatewayPacfileArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> pacfileId;

  /// Creates a new [GetZeroTrustGatewayPacfileArgs].
  /// [accountId] Optional.
  /// [pacfileId] Required.
  const GetZeroTrustGatewayPacfileArgs({
    this.accountId,
    required this.pacfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'pacfileId': pacfileId,
    };
  }

  factory GetZeroTrustGatewayPacfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPacfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pacfileId: pulumi.Input.fromValue(map['pacfileId'] as String),
    );
  }
}
