// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpSensitivityGroupLevel {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDlpSensitivityGroupLevel].
  /// [createdAt] Required.
  /// [description] Required.
  /// [id] Required.
  /// [name] Required.
  /// [updatedAt] Required.
  const GetZeroTrustDlpSensitivityGroupLevel({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'name': name,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDlpSensitivityGroupLevel.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityGroupLevel(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
