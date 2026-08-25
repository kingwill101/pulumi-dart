// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureClusterFleet {
  /// The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/&lt;project-number&gt;/locations/global/membership/&lt;cluster-id&gt;.
  final pulumi.Input<String?>? membership;
  /// The number of the Fleet host project where this cluster will be registered.
  final pulumi.Input<String?>? project;

  /// Creates a new [AzureClusterFleet].
  /// [membership] The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/&lt;project-number&gt;/locations/global/membership/&lt;cluster-id&gt;.
  /// [project] The number of the Fleet host project where this cluster will be registered.
  const AzureClusterFleet({
    this.membership,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
      'project': ?project,
    };
  }

  factory AzureClusterFleet.fromMap(Map<String, dynamic> map) {
    return AzureClusterFleet(
      membership: (() { final guardedValue = map['membership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
