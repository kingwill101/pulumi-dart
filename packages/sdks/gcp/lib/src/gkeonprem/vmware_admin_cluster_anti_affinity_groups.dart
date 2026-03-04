// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterAntiAffinityGroups {
  /// Spread nodes across at least three physical hosts (requires at least three
  /// hosts).
  /// Enabled by default.
  final pulumi.Input<bool> aagConfigDisabled;

  /// Creates a new [VmwareAdminClusterAntiAffinityGroups].
  /// [aagConfigDisabled] Spread nodes across at least three physical hosts (requires at least three
  VmwareAdminClusterAntiAffinityGroups({required this.aagConfigDisabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'aagConfigDisabled': aagConfigDisabled};
  }

  factory VmwareAdminClusterAntiAffinityGroups.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterAntiAffinityGroups(
      aagConfigDisabled: pulumi.Input.fromValue(
        map['aagConfigDisabled'] as bool,
      ),
    );
  }
}
