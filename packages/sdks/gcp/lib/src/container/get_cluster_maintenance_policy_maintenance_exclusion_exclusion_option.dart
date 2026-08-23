// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption {
  /// The behavior of the exclusion end time.
  final pulumi.Input<String> endTimeBehavior;
  /// The scope of automatic upgrades to restrict in the exclusion window.
  final pulumi.Input<String> scope;

  /// Creates a new [GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption].
  /// [endTimeBehavior] The behavior of the exclusion end time.
  /// [scope] The scope of automatic upgrades to restrict in the exclusion window.
  const GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption({
    required this.endTimeBehavior,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeBehavior': endTimeBehavior,
      'scope': scope,
    };
  }

  factory GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption(
      endTimeBehavior: pulumi.Input.fromValue(map['endTimeBehavior'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
