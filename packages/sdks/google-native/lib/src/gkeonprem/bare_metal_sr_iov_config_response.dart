// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the SR-IOV networking operator config.
class BareMetalSrIovConfigResponse {
  /// Whether to install the SR-IOV operator.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BareMetalSrIovConfigResponse].
  /// [enabled] Whether to install the SR-IOV operator.
  const BareMetalSrIovConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BareMetalSrIovConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalSrIovConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
