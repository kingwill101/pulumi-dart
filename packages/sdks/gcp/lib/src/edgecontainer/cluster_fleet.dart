// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/&lt;project-number&gt;/locations/global/membership/&lt;cluster-id&gt;`.
  final pulumi.Input<String>? membership;

  /// The name of the Fleet host project where this cluster will be registered.
  /// Project names are formatted as
  /// `projects/&lt;project-number&gt;`.
  final pulumi.Input<String> project;

  /// Creates a new [ClusterFleet].
  /// [membership] (Output)
  /// [project] The name of the Fleet host project where this cluster will be registered.
  ClusterFleet({this.membership, required this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership, 'project': project};
  }

  factory ClusterFleet.fromMap(Map<String, dynamic> map) {
    return ClusterFleet(
      membership: (() {
        final guardedValue = map['membership'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
