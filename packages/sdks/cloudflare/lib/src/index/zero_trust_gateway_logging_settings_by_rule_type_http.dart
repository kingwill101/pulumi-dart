// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayLoggingSettingsByRuleTypeHttp {
  /// Specify whether to log all requests to this service.
  final pulumi.Input<bool?>? logAll;
  /// Specify whether to log only blocking requests to this service.
  final pulumi.Input<bool?>? logBlocks;

  /// Creates a new [ZeroTrustGatewayLoggingSettingsByRuleTypeHttp].
  /// [logAll] Specify whether to log all requests to this service.
  /// [logBlocks] Specify whether to log only blocking requests to this service.
  const ZeroTrustGatewayLoggingSettingsByRuleTypeHttp({
    this.logAll,
    this.logBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAll': ?logAll,
      'logBlocks': ?logBlocks,
    };
  }

  factory ZeroTrustGatewayLoggingSettingsByRuleTypeHttp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayLoggingSettingsByRuleTypeHttp(
      logAll: (() { final guardedValue = map['logAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logBlocks: (() { final guardedValue = map['logBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
