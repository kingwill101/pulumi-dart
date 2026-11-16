// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsRegoMetadataListResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> data;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  final pulumi.Input<String> importPath;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsRegoMetadataListResult].
  /// [createdAt] Required.
  /// [data] Required.
  /// [id] Server-assigned UUID
  /// [importPath] Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  /// [name] Human-readable name; unique per account
  /// [updatedAt] Required.
  const GetZeroTrustCwsRegoMetadataListResult({
    required this.createdAt,
    required this.data,
    required this.id,
    required this.importPath,
    required this.name,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'data': data,
      'id': id,
      'importPath': importPath,
      'name': name,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsRegoMetadataListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoMetadataListResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      data: pulumi.Input.fromValue(map['data'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      importPath: pulumi.Input.fromValue(map['importPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
