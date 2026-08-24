// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering R2ManagedDomain resources.
class R2ManagedDomainState {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Bucket ID.
  final pulumi.Input<String?>? bucketId;
  /// Name of the bucket.
  final pulumi.Input<String?>? bucketName;
  /// Domain name of the bucket's r2.dev domain.
  final pulumi.Input<String?>? domain;
  /// Whether to enable public bucket access at the r2.dev domain.
  final pulumi.Input<bool?>? enabled;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;

  /// Creates a new [R2ManagedDomainState].
  /// [accountId] Account ID.
  /// [bucketId] Bucket ID.
  /// [bucketName] Name of the bucket.
  /// [domain] Domain name of the bucket's r2.dev domain.
  /// [enabled] Whether to enable public bucket access at the r2.dev domain.
  /// [jurisdiction] Jurisdiction of the bucket
  const R2ManagedDomainState({
    this.accountId,
    this.bucketId,
    this.bucketName,
    this.domain,
    this.enabled,
    this.jurisdiction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketId': ?bucketId,
      'bucketName': ?bucketName,
      'domain': ?domain,
      'enabled': ?enabled,
      'jurisdiction': ?jurisdiction,
    };
  }

  factory R2ManagedDomainState.fromMap(Map<String, dynamic> map) {
    return R2ManagedDomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketId: (() { final guardedValue = map['bucketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
