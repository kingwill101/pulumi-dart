// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_r2_managed_domain_r2_managed_domain_args_doc}
/// The set of arguments for R2ManagedDomain.
/// {@endtemplate}
/// {@macro pulumi_index_r2_managed_domain_r2_managed_domain_args_doc}
class R2ManagedDomainArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// Whether to enable public bucket access at the r2.dev domain.
  final pulumi.Input<bool> enabled;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;

  /// Creates a new [R2ManagedDomainArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [enabled] Whether to enable public bucket access at the r2.dev domain.
  /// [jurisdiction] Jurisdiction of the bucket
  const R2ManagedDomainArgs({
    required this.accountId,
    required this.bucketName,
    required this.enabled,
    this.jurisdiction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'enabled': enabled,
      'jurisdiction': ?jurisdiction,
    };
  }

  factory R2ManagedDomainArgs.fromMap(Map<String, dynamic> map) {
    return R2ManagedDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
