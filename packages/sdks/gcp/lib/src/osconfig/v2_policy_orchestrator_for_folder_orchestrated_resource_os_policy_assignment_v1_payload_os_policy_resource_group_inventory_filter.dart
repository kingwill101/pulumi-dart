// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter {
  /// The OS short name
  final pulumi.Input<String> osShortName;
  /// The OS version
  /// Prefix matches are supported if asterisk(*) is provided as the
  /// last character. For example, to match all versions with a major
  /// version of `7`, specify the following value for this field `7.*`
  /// An empty string matches all OS versions.
  final pulumi.Input<String>? osVersion;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter({
    required this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': ?osVersion,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter(
      osShortName: (map['osShortName'] as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion']! as String).input(),
    );
  }
}

