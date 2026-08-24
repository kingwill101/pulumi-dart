// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayLoggingSettingsByRuleTypeDns {
  /// Specify whether to log all requests to this service.
  final pulumi.Input<bool> logAll;
  /// Specify whether to log only blocking requests to this service.
  final pulumi.Input<bool> logBlocks;

  /// Creates a new [GetZeroTrustGatewayLoggingSettingsByRuleTypeDns].
  /// [logAll] Specify whether to log all requests to this service.
  /// [logBlocks] Specify whether to log only blocking requests to this service.
  const GetZeroTrustGatewayLoggingSettingsByRuleTypeDns({
    required this.logAll,
    required this.logBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAll': logAll,
      'logBlocks': logBlocks,
    };
  }

  factory GetZeroTrustGatewayLoggingSettingsByRuleTypeDns.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayLoggingSettingsByRuleTypeDns(
      logAll: pulumi.Input.fromValue(map['logAll'] as bool),
      logBlocks: pulumi.Input.fromValue(map['logBlocks'] as bool),
    );
  }
}
