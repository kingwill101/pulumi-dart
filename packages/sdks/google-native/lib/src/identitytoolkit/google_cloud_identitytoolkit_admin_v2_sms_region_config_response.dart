// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_allow_by_default_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_allowlist_only_response.dart';

/// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse {
  /// A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse> allowByDefault;
  /// A policy of only allowing regions by explicitly adding them to an allowlist.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse> allowlistOnly;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse].
  /// [allowByDefault] A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  /// [allowlistOnly] A policy of only allowing regions by explicitly adding them to an allowlist.
  GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse({
    required this.allowByDefault,
    required this.allowlistOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowByDefault': pulumi.Input.mapInputValue<GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse, Map<String, dynamic>>(allowByDefault, (value) => value.toMap()),
      'allowlistOnly': pulumi.Input.mapInputValue<GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse, Map<String, dynamic>>(allowlistOnly, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse(
      allowByDefault: (GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse.fromMap((map['allowByDefault'] as Map).cast<String, dynamic>())).input(),
      allowlistOnly: (GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse.fromMap((map['allowlistOnly'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

