// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the criteria for selecting VM Instances by OS type.
class AssignmentOsTypeResponse {
  /// Targets VM instances with OS Inventory enabled and having the following OS architecture.
  final pulumi.Input<String> osArchitecture;

  /// Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  final pulumi.Input<String> osShortName;

  /// Targets VM instances with OS Inventory enabled and having the following following OS version.
  final pulumi.Input<String> osVersion;

  /// Creates a new [AssignmentOsTypeResponse].
  /// [osArchitecture] Targets VM instances with OS Inventory enabled and having the following OS architecture.
  /// [osShortName] Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  /// [osVersion] Targets VM instances with OS Inventory enabled and having the following following OS version.
  AssignmentOsTypeResponse({
    required this.osArchitecture,
    required this.osShortName,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osArchitecture': osArchitecture,
      'osShortName': osShortName,
      'osVersion': osVersion,
    };
  }

  factory AssignmentOsTypeResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentOsTypeResponse(
      osArchitecture: pulumi.Input.fromValue(map['osArchitecture'] as String),
      osShortName: pulumi.Input.fromValue(map['osShortName'] as String),
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
    );
  }
}
