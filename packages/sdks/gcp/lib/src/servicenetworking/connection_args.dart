// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_connection_connection_args_doc}
class ConnectionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE" or any other value, deleting the resource is allowed.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [network] Name of VPC network connected with service producers using VPC peering.
  /// [reservedPeeringRanges] Named IP address range(s) of PEERING type reserved for
  /// [service] Provider peering service that is managing peering connectivity for a
  /// [updateOnCreationFail] When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  const ConnectionArgs({
    this.deletionPolicy,
    required this.network,
    required this.reservedPeeringRanges,
    required this.service,
    this.updateOnCreationFail,
  });

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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      reservedPeeringRanges: pulumi.Input.fromValue((map['reservedPeeringRanges'] as List).cast<String>()),
      service: pulumi.Input.fromValue(map['service'] as String),
      updateOnCreationFail: (() { final guardedValue = map['updateOnCreationFail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
