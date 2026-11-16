// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsPolicy resources.
class ZeroTrustCwsPolicyState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  final pulumi.Input<String?>? entrypoint;
  /// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  final pulumi.Input<String?>? filter;
  /// Name of the policy
  final pulumi.Input<String?>? name;
  /// Dotted path derived from rego_source. Begins with policy. and is unique per account.
  final pulumi.Input<String?>? packagePath;
  /// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  final pulumi.Input<String?>? regoSource;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsPolicyState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [description] Optional free-form description.
  /// [entrypoint] Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  /// [filter] Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  /// [name] Name of the policy
  /// [packagePath] Dotted path derived from rego_source. Begins with policy. and is unique per account.
  /// [regoSource] Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  /// [updatedAt] Optional.
  const ZeroTrustCwsPolicyState({
    this.accountId,
    this.createdAt,
    this.description,
    this.entrypoint,
    this.filter,
    this.name,
    this.packagePath,
    this.regoSource,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'entrypoint': ?entrypoint,
      'filter': ?filter,
      'name': ?name,
      'packagePath': ?packagePath,
      'regoSource': ?regoSource,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsPolicyState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsPolicyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regoSource: (() { final guardedValue = map['regoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
