// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount {
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Contents of a Google service account JSON key file. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> serviceAccountKeyJson;

  /// Creates a new [ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount].
  /// [serviceAccountKeyJson] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  const ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount({
    required this.serviceAccountKeyJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountKeyJson': serviceAccountKeyJson,
    };
  }

  factory ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount(
      serviceAccountKeyJson: pulumi.Input.fromValue(map['serviceAccountKeyJson'] as String),
    );
  }
}
