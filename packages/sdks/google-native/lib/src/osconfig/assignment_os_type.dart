// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the criteria for selecting VM Instances by OS type.
class AssignmentOsType {
  /// Targets VM instances with OS Inventory enabled and having the following OS architecture.
  final pulumi.Input<String>? osArchitecture;
  /// Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  final pulumi.Input<String>? osShortName;
  /// Targets VM instances with OS Inventory enabled and having the following following OS version.
  final pulumi.Input<String>? osVersion;

  /// Creates a new [AssignmentOsType].
  /// [osArchitecture] Targets VM instances with OS Inventory enabled and having the following OS architecture.
  /// [osShortName] Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  /// [osVersion] Targets VM instances with OS Inventory enabled and having the following following OS version.
  const AssignmentOsType({
    this.osArchitecture,
    this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osArchitecture': ?osArchitecture,
      'osShortName': ?osShortName,
      'osVersion': ?osVersion,
    };
  }

  factory AssignmentOsType.fromMap(Map<String, dynamic> map) {
    return AssignmentOsType(
      osArchitecture: (() { final guardedValue = map['osArchitecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osShortName: (() { final guardedValue = map['osShortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
