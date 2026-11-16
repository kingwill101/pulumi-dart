// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_tenant_structure_zero_trust_cws_tenant_structure_args_doc}
/// The set of arguments for ZeroTrustCwsTenantStructure.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_tenant_structure_zero_trust_cws_tenant_structure_args_doc}
class ZeroTrustCwsTenantStructureArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Platform this structure models. Immutable after creation.
  /// Available values: "aws", "cloudflare".
  final pulumi.Input<String> application;
  /// Optional unique Rego mount path in the form tenant.\n\n.\n\n; application must match. Omit to leave unmounted.
  final pulumi.Input<String?>? importPath;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustCwsTenantStructureArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [application] Platform this structure models. Immutable after creation.
  /// [importPath] Optional unique Rego mount path in the form tenant.\n\n.\n\n; application must match. Omit to leave unmounted.
  /// [name] Human-readable name; unique per account
  const ZeroTrustCwsTenantStructureArgs({
    required this.accountId,
    required this.application,
    this.importPath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'application': application,
      'importPath': ?importPath,
      'name': name,
    };
  }

  factory ZeroTrustCwsTenantStructureArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsTenantStructureArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      application: pulumi.Input.fromValue(map['application'] as String),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
