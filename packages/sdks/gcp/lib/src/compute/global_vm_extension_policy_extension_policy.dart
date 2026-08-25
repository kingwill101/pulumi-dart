// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalVmExtensionPolicyExtensionPolicy {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> extensionName;
  /// The version pinning for the extension.
  final pulumi.Input<String?>? pinnedVersion;
  /// String configuration payload.
  final pulumi.Input<String?>? stringConfig;

  /// Creates a new [GlobalVmExtensionPolicyExtensionPolicy].
  /// [extensionName] The identifier for this object. Format specified above.
  /// [pinnedVersion] The version pinning for the extension.
  /// [stringConfig] String configuration payload.
  const GlobalVmExtensionPolicyExtensionPolicy({
    required this.extensionName,
    this.pinnedVersion,
    this.stringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionName': extensionName,
      'pinnedVersion': ?pinnedVersion,
      'stringConfig': ?stringConfig,
    };
  }

  factory GlobalVmExtensionPolicyExtensionPolicy.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyExtensionPolicy(
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      pinnedVersion: (() { final guardedValue = map['pinnedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringConfig: (() { final guardedValue = map['stringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
