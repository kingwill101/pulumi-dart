// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The deletion policy for the service networking connection. Setting to ABANDON allows the resource to be abandoned rather than deleted. This will enable a successful pulumi destroy when destroying CloudSQL instances. Use with care as it can lead to dangling resources.
  final pulumi.Input<String>? deletionPolicy;

  /// Name of VPC network connected with service producers using VPC peering.
  final pulumi.Input<String>? network;

  /// (Computed) The name of the VPC Network Peering connection that was created by the service producer.
  final pulumi.Input<String>? peering;

  /// Named IP address range(s) of PEERING type reserved for
  /// this service provider. Note that invoking this method with a different range when connection
  /// is already established will not reallocate already provisioned service producer subnetworks.
  final pulumi.Input<List<String>>? reservedPeeringRanges;

  /// Provider peering service that is managing peering connectivity for a
  /// service provider organization. For Google services that support this functionality it is
  /// 'servicenetworking.googleapis.com'.
  final pulumi.Input<String>? service;

  /// When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  final pulumi.Input<bool>? updateOnCreationFail;

  /// Creates a new [ConnectionState].
  /// [deletionPolicy] The deletion policy for the service networking connection. Setting to ABANDON allows the resource to be abandoned rather than deleted. This will enable a successful pulumi destroy when destroying CloudSQL instances. Use with care as it can lead to dangling resources.
  /// [network] Name of VPC network connected with service producers using VPC peering.
  /// [peering] (Computed) The name of the VPC Network Peering connection that was created by the service producer.
  /// [reservedPeeringRanges] Named IP address range(s) of PEERING type reserved for
  /// [service] Provider peering service that is managing peering connectivity for a
  /// [updateOnCreationFail] When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  ConnectionState({
    this.deletionPolicy,
    this.network,
    this.peering,
    this.reservedPeeringRanges,
    this.service,
    this.updateOnCreationFail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'network': ?network,
      'peering': ?peering,
      'reservedPeeringRanges': ?reservedPeeringRanges,
      'service': ?service,
      'updateOnCreationFail': ?updateOnCreationFail,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      deletionPolicy: (() {
        final guardedValue = map['deletionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peering: (() {
        final guardedValue = map['peering'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservedPeeringRanges: (() {
        final guardedValue = map['reservedPeeringRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateOnCreationFail: (() {
        final guardedValue = map['updateOnCreationFail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
