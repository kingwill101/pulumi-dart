// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsRegoModulesResult {
  final pulumi.Input<String> createdAt;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  /// Dotted path derived from rego_source. Begins with lib. and is unique per account.
  final pulumi.Input<String> packagePath;
  /// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  final pulumi.Input<String> regoSource;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsRegoModulesResult].
  /// [createdAt] Required.
  /// [id] Server-assigned UUID
  /// [name] Human-readable name; unique per account
  /// [packagePath] Dotted path derived from rego_source. Begins with lib. and is unique per account.
  /// [regoSource] Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  /// [updatedAt] Required.
  const GetZeroTrustCwsRegoModulesResult({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.packagePath,
    required this.regoSource,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'packagePath': packagePath,
      'regoSource': regoSource,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsRegoModulesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoModulesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packagePath: pulumi.Input.fromValue(map['packagePath'] as String),
      regoSource: pulumi.Input.fromValue(map['regoSource'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
