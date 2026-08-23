// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.
class AutoUpgradeOptionsResponse {
  /// [Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final pulumi.Input<String> autoUpgradeStartTime;
  /// [Output only] This field is set when upgrades are about to commence with the description of the upgrade.
  final pulumi.Input<String> description;

  /// Creates a new [AutoUpgradeOptionsResponse].
  /// [autoUpgradeStartTime] [Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [description] [Output only] This field is set when upgrades are about to commence with the description of the upgrade.
  const AutoUpgradeOptionsResponse({
    required this.autoUpgradeStartTime,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeStartTime': autoUpgradeStartTime,
      'description': description,
    };
  }

  factory AutoUpgradeOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AutoUpgradeOptionsResponse(
      autoUpgradeStartTime: pulumi.Input.fromValue(map['autoUpgradeStartTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}
