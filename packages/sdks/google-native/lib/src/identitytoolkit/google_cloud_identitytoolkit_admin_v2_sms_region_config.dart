// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_allow_by_default.dart';
import 'google_cloud_identitytoolkit_admin_v2_allowlist_only.dart';

/// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig {
  /// A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AllowByDefault>? allowByDefault;
  /// A policy of only allowing regions by explicitly adding them to an allowlist.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AllowlistOnly>? allowlistOnly;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig].
  /// [allowByDefault] A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  /// [allowlistOnly] A policy of only allowing regions by explicitly adding them to an allowlist.
  const GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig({
    this.allowByDefault,
    this.allowlistOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowByDefault': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2AllowByDefault, Map<String, dynamic>>(allowByDefault, (value) => value.toMap()),
      'allowlistOnly': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2AllowlistOnly, Map<String, dynamic>>(allowlistOnly, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig(
      allowByDefault: (() { final guardedValue = map['allowByDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2AllowByDefault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      allowlistOnly: (() { final guardedValue = map['allowlistOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
