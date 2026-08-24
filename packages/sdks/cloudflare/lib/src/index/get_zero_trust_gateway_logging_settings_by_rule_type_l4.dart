// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayLoggingSettingsByRuleTypeL4 {
  /// Specify whether to log all requests to this service.
  final pulumi.Input<bool> logAll;
  /// Specify whether to log only blocking requests to this service.
  final pulumi.Input<bool> logBlocks;

  /// Creates a new [GetZeroTrustGatewayLoggingSettingsByRuleTypeL4].
  /// [logAll] Specify whether to log all requests to this service.
  /// [logBlocks] Specify whether to log only blocking requests to this service.
  const GetZeroTrustGatewayLoggingSettingsByRuleTypeL4({
    required this.logAll,
    required this.logBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAll': logAll,
      'logBlocks': logBlocks,
    };
  }

  factory GetZeroTrustGatewayLoggingSettingsByRuleTypeL4.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayLoggingSettingsByRuleTypeL4(
      logAll: pulumi.Input.fromValue(map['logAll'] as bool),
      logBlocks: pulumi.Input.fromValue(map['logBlocks'] as bool),
    );
  }
}
