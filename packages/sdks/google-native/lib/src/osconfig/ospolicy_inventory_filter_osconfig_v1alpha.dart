// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filtering criteria to select VMs based on inventory details.
class OSPolicyInventoryFilterOsconfigV1alpha {
  /// The OS short name
  final pulumi.Input<String> osShortName;
  /// The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  final pulumi.Input<String>? osVersion;

  /// Creates a new [OSPolicyInventoryFilterOsconfigV1alpha].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  const OSPolicyInventoryFilterOsconfigV1alpha({
    required this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': ?osVersion,
    };
  }

  factory OSPolicyInventoryFilterOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyInventoryFilterOsconfigV1alpha(
      osShortName: pulumi.Input.fromValue(map['osShortName'] as String),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

