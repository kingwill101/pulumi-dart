// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_psc_interface_config.dart';
import 'private_connection_vpc_peering_config.dart';

/// {@template pulumi_databasemigrationservice_private_connection_private_connection_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_databasemigrationservice_private_connection_private_connection_args_doc}
class PrivateConnectionArgs {
  /// If set to true, will skip validations.
  final pulumi.Input<bool?>? createWithoutValidation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display name.
  final pulumi.Input<String?>? displayName;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name of the location this private connection is located in.
  final pulumi.Input<String> location;
  /// The private connectivity identifier.
  final pulumi.Input<String> privateConnectionId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The PSC Interface configuration is used to create PSC Interface
  /// between DMS's internal VPC and the consumer's PSC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionPscInterfaceConfig?>? pscInterfaceConfig;
  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionVpcPeeringConfig?>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionArgs].
  /// [createWithoutValidation] If set to true, will skip validations.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] The name of the location this private connection is located in.
  /// [privateConnectionId] The private connectivity identifier.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] The PSC Interface configuration is used to create PSC Interface
  /// [vpcPeeringConfig] The VPC Peering configuration is used to create VPC peering
  const PrivateConnectionArgs({
    this.createWithoutValidation,
    this.deletionPolicy,
    this.displayName,
    this.labels,
    required this.location,
    required this.privateConnectionId,
    this.project,
    this.pscInterfaceConfig,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createWithoutValidation': ?createWithoutValidation,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<PrivateConnectionPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'vpcPeeringConfig': ?pulumi.Input.mapOptionalInputValue<PrivateConnectionVpcPeeringConfig, Map<String, dynamic>>(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      createWithoutValidation: (() { final guardedValue = map['createWithoutValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateConnectionId: pulumi.Input.fromValue(map['privateConnectionId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectionPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcPeeringConfig: (() { final guardedValue = map['vpcPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectionVpcPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
