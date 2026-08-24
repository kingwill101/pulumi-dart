// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayLoggingSettingsByRuleTypeL4 {
  /// Specify whether to log all requests to this service.
  final pulumi.Input<bool?>? logAll;
  /// Specify whether to log only blocking requests to this service.
  final pulumi.Input<bool?>? logBlocks;

  /// Creates a new [ZeroTrustGatewayLoggingSettingsByRuleTypeL4].
  /// [logAll] Specify whether to log all requests to this service.
  /// [logBlocks] Specify whether to log only blocking requests to this service.
  const ZeroTrustGatewayLoggingSettingsByRuleTypeL4({
    this.logAll,
    this.logBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAll': ?logAll,
      'logBlocks': ?logBlocks,
    };
  }

  factory ZeroTrustGatewayLoggingSettingsByRuleTypeL4.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayLoggingSettingsByRuleTypeL4(
      logAll: (() { final guardedValue = map['logAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logBlocks: (() { final guardedValue = map['logBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
