// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketEncryptionGoogleManagedEncryptionEnforcementConfig {
  /// Time from which the config was effective.
  final pulumi.Input<String>? effectiveTime;
  /// Whether Google Managed Encryption (GMEK) is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using GMEK encryption. If NotRestricted or unset, creation of new objects with GMEK encryption is allowed.
  final pulumi.Input<String> restrictionMode;

  /// Creates a new [BucketEncryptionGoogleManagedEncryptionEnforcementConfig].
  /// [effectiveTime] Time from which the config was effective.
  /// [restrictionMode] Whether Google Managed Encryption (GMEK) is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using GMEK encryption. If NotRestricted or unset, creation of new objects with GMEK encryption is allowed.
  const BucketEncryptionGoogleManagedEncryptionEnforcementConfig({
    this.effectiveTime,
    required this.restrictionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'restrictionMode': restrictionMode,
    };
  }

  factory BucketEncryptionGoogleManagedEncryptionEnforcementConfig.fromMap(Map<String, dynamic> map) {
    return BucketEncryptionGoogleManagedEncryptionEnforcementConfig(
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictionMode: pulumi.Input.fromValue(map['restrictionMode'] as String),
    );
  }
}
