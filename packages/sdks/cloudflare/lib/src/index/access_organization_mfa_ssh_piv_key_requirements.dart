// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessOrganizationMfaSshPivKeyRequirements {
  /// Defines when a PIN is required to use the SSH key. Valid values: `never` (no PIN required), `once` (PIN required once per session), `always` (PIN required for each use).
  /// Available values: "never", "once", "always".
  final pulumi.Input<String?>? pinPolicy;
  /// Requires the SSH PIV key to be stored on a FIPS 140-2 Level 1 or higher validated device.
  final pulumi.Input<bool?>? requireFipsDevice;
  /// Specifies the allowed SSH key sizes in bits. Valid sizes depend on key type. Ed25519 has a fixed key size and does not accept this parameter.
  final pulumi.Input<List<int>?>? sshKeySizes;
  /// Specifies the allowed SSH key types. Valid values are `ecdsa`, `ed25519`, and `rsa`.
  final pulumi.Input<List<String>?>? sshKeyTypes;
  /// Defines when physical touch is required to use the SSH key. Valid values: `never` (no touch required), `always` (touch required for each use), `cached` (touch cached for 15 seconds).
  /// Available values: "never", "always", "cached".
  final pulumi.Input<String?>? touchPolicy;

  /// Creates a new [AccessOrganizationMfaSshPivKeyRequirements].
  /// [pinPolicy] Defines when a PIN is required to use the SSH key. Valid values: `never` (no PIN required), `once` (PIN required once per session), `always` (PIN required for each use).
  /// [requireFipsDevice] Requires the SSH PIV key to be stored on a FIPS 140-2 Level 1 or higher validated device.
  /// [sshKeySizes] Specifies the allowed SSH key sizes in bits. Valid sizes depend on key type. Ed25519 has a fixed key size and does not accept this parameter.
  /// [sshKeyTypes] Specifies the allowed SSH key types. Valid values are `ecdsa`, `ed25519`, and `rsa`.
  /// [touchPolicy] Defines when physical touch is required to use the SSH key. Valid values: `never` (no touch required), `always` (touch required for each use), `cached` (touch cached for 15 seconds).
  const AccessOrganizationMfaSshPivKeyRequirements({
    this.pinPolicy,
    this.requireFipsDevice,
    this.sshKeySizes,
    this.sshKeyTypes,
    this.touchPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pinPolicy': ?pinPolicy,
      'requireFipsDevice': ?requireFipsDevice,
      'sshKeySizes': ?sshKeySizes,
      'sshKeyTypes': ?sshKeyTypes,
      'touchPolicy': ?touchPolicy,
    };
  }

  factory AccessOrganizationMfaSshPivKeyRequirements.fromMap(Map<String, dynamic> map) {
    return AccessOrganizationMfaSshPivKeyRequirements(
      pinPolicy: (() { final guardedValue = map['pinPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireFipsDevice: (() { final guardedValue = map['requireFipsDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshKeySizes: (() { final guardedValue = map['sshKeySizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      sshKeyTypes: (() { final guardedValue = map['sshKeyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      touchPolicy: (() { final guardedValue = map['touchPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
