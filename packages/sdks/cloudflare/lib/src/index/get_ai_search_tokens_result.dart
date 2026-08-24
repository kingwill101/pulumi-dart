// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchTokensResult {
  final pulumi.Input<String> cfApiId;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;
  final pulumi.Input<bool> legacy;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  final pulumi.Input<String> name;

  /// Creates a new [GetAiSearchTokensResult].
  /// [cfApiId] Required.
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [enabled] Required.
  /// [id] Required.
  /// [legacy] Required.
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [name] Required.
  const GetAiSearchTokensResult({
    required this.cfApiId,
    required this.createdAt,
    required this.createdBy,
    required this.enabled,
    required this.id,
    required this.legacy,
    required this.modifiedAt,
    required this.modifiedBy,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cfApiId': cfApiId,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'enabled': enabled,
      'id': id,
      'legacy': legacy,
      'modifiedAt': modifiedAt,
      'modifiedBy': modifiedBy,
      'name': name,
    };
  }

  factory GetAiSearchTokensResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchTokensResult(
      cfApiId: pulumi.Input.fromValue(map['cfApiId'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      legacy: pulumi.Input.fromValue(map['legacy'] as bool),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
