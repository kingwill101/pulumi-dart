// ignore_for_file: unused_element, unnecessary_cast


/// AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.
class AutoUpgradeOptionsResponse {
  /// [Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String autoUpgradeStartTime;
  /// [Output only] This field is set when upgrades are about to commence with the description of the upgrade.
  final String description;

  /// Creates a new [AutoUpgradeOptionsResponse].
  /// [autoUpgradeStartTime] [Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [description] [Output only] This field is set when upgrades are about to commence with the description of the upgrade.
  AutoUpgradeOptionsResponse({
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
      autoUpgradeStartTime: map['autoUpgradeStartTime'] as String,
      description: map['description'] as String,
    );
  }
}

