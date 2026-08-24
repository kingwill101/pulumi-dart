// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingVersion {
  /// Available values: "true", "false".
  final pulumi.Input<String> active;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> data;
  final pulumi.Input<bool> isValid;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetAiGatewayDynamicRoutingVersion].
  /// [active] Available values: "true", "false".
  /// [createdAt] Required.
  /// [data] Required.
  /// [isValid] Required.
  /// [versionId] Required.
  const GetAiGatewayDynamicRoutingVersion({
    required this.active,
    required this.createdAt,
    required this.data,
    required this.isValid,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'createdAt': createdAt,
      'data': data,
      'isValid': isValid,
      'versionId': versionId,
    };
  }

  factory GetAiGatewayDynamicRoutingVersion.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingVersion(
      active: pulumi.Input.fromValue(map['active'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      data: pulumi.Input.fromValue(map['data'] as String),
      isValid: pulumi.Input.fromValue(map['isValid'] as bool),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
