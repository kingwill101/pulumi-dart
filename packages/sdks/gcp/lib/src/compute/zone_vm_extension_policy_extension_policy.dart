// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneVmExtensionPolicyExtensionPolicy {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> extensionName;
  /// The specific version of the extension to install.
  final pulumi.Input<String?>? pinnedVersion;
  /// String-based configuration data for the extension.
  final pulumi.Input<String?>? stringConfig;

  /// Creates a new [ZoneVmExtensionPolicyExtensionPolicy].
  /// [extensionName] The identifier for this object. Format specified above.
  /// [pinnedVersion] The specific version of the extension to install.
  /// [stringConfig] String-based configuration data for the extension.
  const ZoneVmExtensionPolicyExtensionPolicy({
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

  factory ZoneVmExtensionPolicyExtensionPolicy.fromMap(Map<String, dynamic> map) {
    return ZoneVmExtensionPolicyExtensionPolicy(
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      pinnedVersion: (() { final guardedValue = map['pinnedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringConfig: (() { final guardedValue = map['stringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
