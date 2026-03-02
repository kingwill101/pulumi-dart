// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VM inventory details.
class OSPolicyAssignmentInstanceFilterInventory {
  /// The OS short name
  final pulumi.Input<String> osShortName;
  /// The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  final pulumi.Input<String>? osVersion;

  /// Creates a new [OSPolicyAssignmentInstanceFilterInventory].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  OSPolicyAssignmentInstanceFilterInventory({
    required this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': ?osVersion,
    };
  }

  factory OSPolicyAssignmentInstanceFilterInventory.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilterInventory(
      osShortName: (map['osShortName'] as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion']! as String).input(),
    );
  }
}

