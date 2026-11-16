// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsPoliciesResult {
  final pulumi.Input<String> createdAt;
  /// Optional free-form description.
  final pulumi.Input<String> description;
  /// Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  final pulumi.Input<String> entrypoint;
  /// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  final pulumi.Input<String> filter;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  /// Dotted path derived from rego_source. Begins with policy. and is unique per account.
  final pulumi.Input<String> packagePath;
  /// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  final pulumi.Input<String> regoSource;
  /// Tags attached to this policy
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsPoliciesResult].
  /// [createdAt] Required.
  /// [description] Optional free-form description.
  /// [entrypoint] Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  /// [filter] Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  /// [id] Server-assigned UUID
  /// [name] Human-readable name; unique per account
  /// [packagePath] Dotted path derived from rego_source. Begins with policy. and is unique per account.
  /// [regoSource] Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  /// [tags] Tags attached to this policy
  /// [updatedAt] Required.
  const GetZeroTrustCwsPoliciesResult({
    required this.createdAt,
    required this.description,
    required this.entrypoint,
    required this.filter,
    required this.id,
    required this.name,
    required this.packagePath,
    required this.regoSource,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'entrypoint': entrypoint,
      'filter': filter,
      'id': id,
      'name': name,
      'packagePath': packagePath,
      'regoSource': regoSource,
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPoliciesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      entrypoint: pulumi.Input.fromValue(map['entrypoint'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packagePath: pulumi.Input.fromValue(map['packagePath'] as String),
      regoSource: pulumi.Input.fromValue(map['regoSource'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
