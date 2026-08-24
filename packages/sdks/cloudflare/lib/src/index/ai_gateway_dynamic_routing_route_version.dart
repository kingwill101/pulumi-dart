// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingRouteVersion {
  /// Available values: "true", "false".
  final pulumi.Input<String?>? active;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? data;
  final pulumi.Input<bool?>? isValid;
  final pulumi.Input<String?>? versionId;

  /// Creates a new [AiGatewayDynamicRoutingRouteVersion].
  /// [active] Available values: "true", "false".
  /// [createdAt] Optional.
  /// [data] Optional.
  /// [isValid] Optional.
  /// [versionId] Optional.
  const AiGatewayDynamicRoutingRouteVersion({
    this.active,
    this.createdAt,
    this.data,
    this.isValid,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'createdAt': ?createdAt,
      'data': ?data,
      'isValid': ?isValid,
      'versionId': ?versionId,
    };
  }

  factory AiGatewayDynamicRoutingRouteVersion.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteVersion(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isValid: (() { final guardedValue = map['isValid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
