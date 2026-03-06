// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fleet related configuration. Fleets are a Google Cloud concept for logically organizing clusters, letting you use and manage multi-cluster capabilities and apply consistent policies across your systems. See [Anthos Fleets](`https://cloud.google.com/anthos/multicluster-management/fleets`) for more details on Anthos multi-cluster capabilities using Fleets. ##
class FleetResponse {
  /// The name of the managed fleet Membership resource associated to this cluster. Membership names are formatted as `projects//locations//memberships/`.
  final pulumi.Input<String> membership;

  /// Creates a new [FleetResponse].
  /// [membership] The name of the managed fleet Membership resource associated to this cluster. Membership names are formatted as `projects//locations//memberships/`.
  const FleetResponse({
    required this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': membership,
    };
  }

  factory FleetResponse.fromMap(Map<String, dynamic> map) {
    return FleetResponse(
      membership: pulumi.Input.fromValue(map['membership'] as String),
    );
  }
}

