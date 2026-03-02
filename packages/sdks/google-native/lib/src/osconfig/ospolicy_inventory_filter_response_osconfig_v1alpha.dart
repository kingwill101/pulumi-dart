// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filtering criteria to select VMs based on inventory details.
class OSPolicyInventoryFilterResponseOsconfigV1alpha {
  /// The OS short name
  final pulumi.Input<String> osShortName;
  /// The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  final pulumi.Input<String> osVersion;

  /// Creates a new [OSPolicyInventoryFilterResponseOsconfigV1alpha].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  OSPolicyInventoryFilterResponseOsconfigV1alpha({
    required this.osShortName,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': osVersion,
    };
  }

  factory OSPolicyInventoryFilterResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyInventoryFilterResponseOsconfigV1alpha(
      osShortName: (map['osShortName'] as String).input(),
      osVersion: (map['osVersion'] as String).input(),
    );
  }
}

