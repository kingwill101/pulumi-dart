// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains fields that are required to perform Apple-specific integrity checks.
class GoogleCloudRecaptchaenterpriseV1AppleDeveloperId {
  /// The Apple developer key ID (10-character string).
  final pulumi.Input<String> keyId;
  /// Input only. A private key (downloaded as a text file with a .p8 file extension) generated for your Apple Developer account. Ensure that Apple DeviceCheck is enabled for the private key.
  final pulumi.Input<String> privateKey;
  /// The Apple team ID (10-character string) owning the provisioning profile used to build your application.
  final pulumi.Input<String> teamId;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1AppleDeveloperId].
  /// [keyId] The Apple developer key ID (10-character string).
  /// [privateKey] Input only. A private key (downloaded as a text file with a .p8 file extension) generated for your Apple Developer account. Ensure that Apple DeviceCheck is enabled for the private key.
  /// [teamId] The Apple team ID (10-character string) owning the provisioning profile used to build your application.
  const GoogleCloudRecaptchaenterpriseV1AppleDeveloperId({
    required this.keyId,
    required this.privateKey,
    required this.teamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'privateKey': privateKey,
      'teamId': teamId,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1AppleDeveloperId.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1AppleDeveloperId(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      teamId: pulumi.Input.fromValue(map['teamId'] as String),
    );
  }
}

