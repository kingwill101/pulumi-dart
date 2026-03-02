// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterceptEndpointGroupAssociation {
  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;
  /// (Output)
  /// The associated network, for example:
  /// projects/123456789/global/networks/my-network.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? network;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final pulumi.Input<String>? state;

  /// Creates a new [InterceptEndpointGroupAssociation].
  /// [name] (Output)
  /// [network] (Output)
  /// [state] (Output)
  InterceptEndpointGroupAssociation({
    this.name,
    this.network,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'network': ?network,
      'state': ?state,
    };
  }

  factory InterceptEndpointGroupAssociation.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupAssociation(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

