// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp {
  /// Specify whether to log all requests to this service.
  final pulumi.Input<bool> logAll;
  /// Specify whether to log only blocking requests to this service.
  final pulumi.Input<bool> logBlocks;

  /// Creates a new [GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp].
  /// [logAll] Specify whether to log all requests to this service.
  /// [logBlocks] Specify whether to log only blocking requests to this service.
  const GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp({
    required this.logAll,
    required this.logBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAll': logAll,
      'logBlocks': logBlocks,
    };
  }

  factory GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp(
      logAll: pulumi.Input.fromValue(map['logAll'] as bool),
      logBlocks: pulumi.Input.fromValue(map['logBlocks'] as bool),
    );
  }
}
