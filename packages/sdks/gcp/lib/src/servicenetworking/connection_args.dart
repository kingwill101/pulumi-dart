// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_connection_connection_args_doc}
class ConnectionArgs {
  /// The deletion policy for the service networking connection. Setting to ABANDON allows the resource to be abandoned rather than deleted. This will enable a successful pulumi destroy when destroying CloudSQL instances. Use with care as it can lead to dangling resources.
  final pulumi.Input<String>? deletionPolicy;
  /// Name of VPC network connected with service producers using VPC peering.
  final pulumi.Input<String> network;
  /// Named IP address range(s) of PEERING type reserved for
  /// this service provider. Note that invoking this method with a different range when connection
  /// is already established will not reallocate already provisioned service producer subnetworks.
  final pulumi.Input<List<String>> reservedPeeringRanges;
  /// Provider peering service that is managing peering connectivity for a
  /// service provider organization. For Google services that support this functionality it is
  /// 'servicenetworking.googleapis.com'.
  final pulumi.Input<String> service;
  /// When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  final pulumi.Input<bool>? updateOnCreationFail;

  /// Creates a new [ConnectionArgs].
  /// [deletionPolicy] The deletion policy for the service networking connection. Setting to ABANDON allows the resource to be abandoned rather than deleted. This will enable a successful pulumi destroy when destroying CloudSQL instances. Use with care as it can lead to dangling resources.
  /// [network] Name of VPC network connected with service producers using VPC peering.
  /// [reservedPeeringRanges] Named IP address range(s) of PEERING type reserved for
  /// [service] Provider peering service that is managing peering connectivity for a
  /// [updateOnCreationFail] When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  ConnectionArgs({
    pulumi.Output<String>? deletionPolicy,
    required pulumi.Output<String> network,
    required pulumi.Output<List<String>> reservedPeeringRanges,
    required pulumi.Output<String> service,
    pulumi.Output<bool>? updateOnCreationFail,
  }) :
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      network = pulumi.Input.asInput<String>(network),
      reservedPeeringRanges = pulumi.Input.asInput<List<String>>(reservedPeeringRanges),
      service = pulumi.Input.asInput<String>(service),
      updateOnCreationFail = pulumi.Input.asOptionalInput<bool>(updateOnCreationFail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'network': network,
      'reservedPeeringRanges': reservedPeeringRanges,
      'service': service,
      'updateOnCreationFail': ?updateOnCreationFail,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      reservedPeeringRanges: pulumi.Output.create<List<String>>((map['reservedPeeringRanges'] as List).cast<String>()),
      service: pulumi.Output.create<String>(map['service'] as String),
      updateOnCreationFail: map['updateOnCreationFail'] == null ? null : pulumi.Output.create<bool>(map['updateOnCreationFail'] as bool),
    );
  }
}

