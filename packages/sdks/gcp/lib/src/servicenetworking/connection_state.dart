// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE" or any other value, deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Name of VPC network connected with service producers using VPC peering.
  final pulumi.Input<String?>? network;
  /// (Computed) The name of the VPC Network Peering connection that was created by the service producer.
  final pulumi.Input<String?>? peering;
  /// Named IP address range(s) of PEERING type reserved for
  /// this service provider. Note that invoking this method with a different range when connection
  /// is already established will not reallocate already provisioned service producer subnetworks.
  final pulumi.Input<List<String>?>? reservedPeeringRanges;
  /// Provider peering service that is managing peering connectivity for a
  /// service provider organization. For Google services that support this functionality it is
  /// 'servicenetworking.googleapis.com'.
  final pulumi.Input<String?>? service;
  /// When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  final pulumi.Input<bool?>? updateOnCreationFail;

  /// Creates a new [ConnectionState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [network] Name of VPC network connected with service producers using VPC peering.
  /// [peering] (Computed) The name of the VPC Network Peering connection that was created by the service producer.
  /// [reservedPeeringRanges] Named IP address range(s) of PEERING type reserved for
  /// [service] Provider peering service that is managing peering connectivity for a
  /// [updateOnCreationFail] When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  const ConnectionState({
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peering: (() { final guardedValue = map['peering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedPeeringRanges: (() { final guardedValue = map['reservedPeeringRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateOnCreationFail: (() { final guardedValue = map['updateOnCreationFail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
