// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/&lt;project-number&gt;/locations/&lt;location&gt;/memberships/&lt;cluster-id&gt;`.
  final pulumi.Input<String?>? membership;

  /// Creates a new [VMwareClusterFleet].
  /// [membership] (Output)
  const VMwareClusterFleet({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
    };
  }

  factory VMwareClusterFleet.fromMap(Map<String, dynamic> map) {
    return VMwareClusterFleet(
      membership: (() { final guardedValue = map['membership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
