// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional config for Apple for code flow.
class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig {
  /// Key ID for the private key.
  final pulumi.Input<String>? keyId;
  /// Private key used for signing the client secret JWT.
  final pulumi.Input<String>? privateKey;
  /// Apple Developer Team ID.
  final pulumi.Input<String>? teamId;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig].
  /// [keyId] Key ID for the private key.
  /// [privateKey] Private key used for signing the client secret JWT.
  /// [teamId] Apple Developer Team ID.
  const GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig({
    this.keyId,
    this.privateKey,
    this.teamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'privateKey': ?privateKey,
      'teamId': ?teamId,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teamId: (() { final guardedValue = map['teamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

