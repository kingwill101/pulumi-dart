// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsTenantStructuresResult {
  /// Platform this structure models. Immutable after creation; determines valid node kinds and identifier formats.
  /// Available values: "aws", "cloudflare".
  final pulumi.Input<String> application;
  final pulumi.Input<String> createdAt;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Optional unique Rego mount path in the form tenant.\n\n.\n\n. The application segment must match application; omitted when unmounted.
  final pulumi.Input<String> importPath;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsTenantStructuresResult].
  /// [application] Platform this structure models. Immutable after creation; determines valid node kinds and identifier formats.
  /// [createdAt] Required.
  /// [id] Server-assigned UUID
  /// [importPath] Optional unique Rego mount path in the form tenant.\n\n.\n\n. The application segment must match application; omitted when unmounted.
  /// [name] Human-readable name; unique per account
  /// [updatedAt] Required.
  const GetZeroTrustCwsTenantStructuresResult({
    required this.application,
    required this.createdAt,
    required this.id,
    required this.importPath,
    required this.name,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'createdAt': createdAt,
      'id': id,
      'importPath': importPath,
      'name': name,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsTenantStructuresResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructuresResult(
      application: pulumi.Input.fromValue(map['application'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      importPath: pulumi.Input.fromValue(map['importPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
