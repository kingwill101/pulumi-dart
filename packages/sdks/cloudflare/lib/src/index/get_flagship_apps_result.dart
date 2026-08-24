// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlagshipAppsResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<String> updatedAt;
  /// Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  final pulumi.Input<String> updatedBy;

  /// Creates a new [GetFlagshipAppsResult].
  /// [createdAt] Required.
  /// [id] Required.
  /// [name] Required.
  /// [updatedAt] Required.
  /// [updatedBy] Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  const GetFlagshipAppsResult({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.updatedAt,
    required this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'updatedAt': updatedAt,
      'updatedBy': updatedBy,
    };
  }

  factory GetFlagshipAppsResult.fromMap(Map<String, dynamic> map) {
    return GetFlagshipAppsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
    );
  }
}
