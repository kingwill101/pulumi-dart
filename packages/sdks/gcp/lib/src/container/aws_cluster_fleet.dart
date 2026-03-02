// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterFleet {
  /// The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>.
  final pulumi.Input<String>? membership;
  /// The number of the Fleet host project where this cluster will be registered.
  final pulumi.Input<String>? project;

  /// Creates a new [AwsClusterFleet].
  /// [membership] The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>.
  /// [project] The number of the Fleet host project where this cluster will be registered.
  AwsClusterFleet({
    this.membership,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
      'project': ?project,
    };
  }

  factory AwsClusterFleet.fromMap(Map<String, dynamic> map) {
    return AwsClusterFleet(
      membership: map['membership'] == null ? null : (map['membership'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

