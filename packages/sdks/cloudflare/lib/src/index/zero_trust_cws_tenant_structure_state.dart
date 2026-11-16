// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsTenantStructure resources.
class ZeroTrustCwsTenantStructureState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  /// Platform this structure models. Immutable after creation.
  /// Available values: "aws", "cloudflare".
  final pulumi.Input<String?>? application;
  final pulumi.Input<String?>? createdAt;
  /// Optional unique Rego mount path in the form tenant.\n\n.\n\n; application must match. Omit to leave unmounted.
  final pulumi.Input<String?>? importPath;
  /// Human-readable name; unique per account
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsTenantStructureState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [application] Platform this structure models. Immutable after creation.
  /// [createdAt] Optional.
  /// [importPath] Optional unique Rego mount path in the form tenant.\n\n.\n\n; application must match. Omit to leave unmounted.
  /// [name] Human-readable name; unique per account
  /// [updatedAt] Optional.
  const ZeroTrustCwsTenantStructureState({
    this.accountId,
    this.application,
    this.createdAt,
    this.importPath,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'application': ?application,
      'createdAt': ?createdAt,
      'importPath': ?importPath,
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsTenantStructureState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsTenantStructureState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
