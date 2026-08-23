// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessLevelConditionDevicePolicyOsConstraint {
  /// The minimum allowed OS version. If not set, any version
  /// of this OS satisfies the constraint.
  /// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
  final pulumi.Input<String>? minimumVersion;
  /// The operating system type of the device.
  /// Possible values are: `OS_UNSPECIFIED`, `DESKTOP_MAC`, `DESKTOP_WINDOWS`, `DESKTOP_LINUX`, `DESKTOP_CHROME_OS`, `ANDROID`, `IOS`.
  final pulumi.Input<String> osType;

  /// Creates a new [AccessLevelConditionDevicePolicyOsConstraint].
  /// [minimumVersion] The minimum allowed OS version. If not set, any version
  /// [osType] The operating system type of the device.
  const AccessLevelConditionDevicePolicyOsConstraint({
    this.minimumVersion,
    required this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumVersion': ?minimumVersion,
      'osType': osType,
    };
  }

  factory AccessLevelConditionDevicePolicyOsConstraint.fromMap(Map<String, dynamic> map) {
    return AccessLevelConditionDevicePolicyOsConstraint(
      minimumVersion: (() { final guardedValue = map['minimumVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: pulumi.Input.fromValue(map['osType'] as String),
    );
  }
}
