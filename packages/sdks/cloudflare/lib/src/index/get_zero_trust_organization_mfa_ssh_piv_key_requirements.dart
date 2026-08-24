// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustOrganizationMfaSshPivKeyRequirements {
  /// Defines when a PIN is required to use the SSH key. Valid values: `never` (no PIN required), `once` (PIN required once per session), `always` (PIN required for each use).
  /// Available values: "never", "once", "always".
  final pulumi.Input<String> pinPolicy;
  /// Requires the SSH PIV key to be stored on a FIPS 140-2 Level 1 or higher validated device.
  final pulumi.Input<bool> requireFipsDevice;
  /// Specifies the allowed SSH key sizes in bits. Valid sizes depend on key type. Ed25519 has a fixed key size and does not accept this parameter.
  final pulumi.Input<List<int>> sshKeySizes;
  /// Specifies the allowed SSH key types. Valid values are `ecdsa`, `ed25519`, and `rsa`.
  final pulumi.Input<List<String>> sshKeyTypes;
  /// Defines when physical touch is required to use the SSH key. Valid values: `never` (no touch required), `always` (touch required for each use), `cached` (touch cached for 15 seconds).
  /// Available values: "never", "always", "cached".
  final pulumi.Input<String> touchPolicy;

  /// Creates a new [GetZeroTrustOrganizationMfaSshPivKeyRequirements].
  /// [pinPolicy] Defines when a PIN is required to use the SSH key. Valid values: `never` (no PIN required), `once` (PIN required once per session), `always` (PIN required for each use).
  /// [requireFipsDevice] Requires the SSH PIV key to be stored on a FIPS 140-2 Level 1 or higher validated device.
  /// [sshKeySizes] Specifies the allowed SSH key sizes in bits. Valid sizes depend on key type. Ed25519 has a fixed key size and does not accept this parameter.
  /// [sshKeyTypes] Specifies the allowed SSH key types. Valid values are `ecdsa`, `ed25519`, and `rsa`.
  /// [touchPolicy] Defines when physical touch is required to use the SSH key. Valid values: `never` (no touch required), `always` (touch required for each use), `cached` (touch cached for 15 seconds).
  const GetZeroTrustOrganizationMfaSshPivKeyRequirements({
    required this.pinPolicy,
    required this.requireFipsDevice,
    required this.sshKeySizes,
    required this.sshKeyTypes,
    required this.touchPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pinPolicy': pinPolicy,
      'requireFipsDevice': requireFipsDevice,
      'sshKeySizes': sshKeySizes,
      'sshKeyTypes': sshKeyTypes,
      'touchPolicy': touchPolicy,
    };
  }

  factory GetZeroTrustOrganizationMfaSshPivKeyRequirements.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationMfaSshPivKeyRequirements(
      pinPolicy: pulumi.Input.fromValue(map['pinPolicy'] as String),
      requireFipsDevice: pulumi.Input.fromValue(map['requireFipsDevice'] as bool),
      sshKeySizes: pulumi.Input.fromValue((map['sshKeySizes'] as List).cast<int>()),
      sshKeyTypes: pulumi.Input.fromValue((map['sshKeyTypes'] as List).cast<String>()),
      touchPolicy: pulumi.Input.fromValue(map['touchPolicy'] as String),
    );
  }
}
