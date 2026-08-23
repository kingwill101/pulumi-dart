// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig {
  /// Time from which the config was effective. This is service-provided.
  final pulumi.Input<String> effectiveTime;
  /// Whether GMEK is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using GMEK encryption. If NotRestricted or unset, creation of new objects with GMEK encryption is allowed.
  final pulumi.Input<String> restrictionMode;

  /// Creates a new [GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig].
  /// [effectiveTime] Time from which the config was effective. This is service-provided.
  /// [restrictionMode] Whether GMEK is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using GMEK encryption. If NotRestricted or unset, creation of new objects with GMEK encryption is allowed.
  const GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig({
    required this.effectiveTime,
    required this.restrictionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': effectiveTime,
      'restrictionMode': restrictionMode,
    };
  }

  factory GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig.fromMap(Map<String, dynamic> map) {
    return GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig(
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      restrictionMode: pulumi.Input.fromValue(map['restrictionMode'] as String),
    );
  }
}
