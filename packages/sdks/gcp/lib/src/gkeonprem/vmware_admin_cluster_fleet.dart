// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterFleet {
  /// (Output)
  /// The name of the managed Fleet Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/&lt;project-number&gt;/locations/&lt;location&gt;/memberships/&lt;cluster-id&gt;`.
  final pulumi.Input<String>? membership;

  /// Creates a new [VmwareAdminClusterFleet].
  /// [membership] (Output)
  VmwareAdminClusterFleet({this.membership});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership};
  }

  factory VmwareAdminClusterFleet.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterFleet(
      membership: (() {
        final guardedValue = map['membership'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
