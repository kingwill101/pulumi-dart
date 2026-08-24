// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_logging_get_zero_trust_gateway_logging_args_doc}
/// Arguments for getZeroTrustGatewayLogging.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_logging_get_zero_trust_gateway_logging_args_doc}
class GetZeroTrustGatewayLoggingArgs {
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetZeroTrustGatewayLoggingArgs].
  /// [accountId] Optional.
  const GetZeroTrustGatewayLoggingArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetZeroTrustGatewayLoggingArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayLoggingArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
