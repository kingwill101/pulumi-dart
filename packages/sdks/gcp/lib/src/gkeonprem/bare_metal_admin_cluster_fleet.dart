// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/<location>/memberships/<cluster-id>`.
  final pulumi.Input<String>? membership;

  /// Creates a new [BareMetalAdminClusterFleet].
  /// [membership] (Output)
  BareMetalAdminClusterFleet({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
    };
  }

  factory BareMetalAdminClusterFleet.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterFleet(
      membership: map['membership'] == null ? null : (map['membership']! as String).input(),
    );
  }
}

