// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional config for Apple for code flow.
class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse {
  /// Key ID for the private key.
  final pulumi.Input<String> keyId;
  /// Private key used for signing the client secret JWT.
  final pulumi.Input<String> privateKey;
  /// Apple Developer Team ID.
  final pulumi.Input<String> teamId;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse].
  /// [keyId] Key ID for the private key.
  /// [privateKey] Private key used for signing the client secret JWT.
  /// [teamId] Apple Developer Team ID.
  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse({
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

  factory GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      teamId: pulumi.Input.fromValue(map['teamId'] as String),
    );
  }
}

