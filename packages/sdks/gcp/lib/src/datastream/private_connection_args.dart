// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_psc_interface_config.dart';
import 'private_connection_vpc_peering_config.dart';

/// {@template pulumi_datastream_private_connection_private_connection_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datastream_private_connection_private_connection_args_doc}
class PrivateConnectionArgs {
  /// If set to true, will skip validations.
  final pulumi.Input<bool>? createWithoutValidation;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location this private connection is located in.
  final pulumi.Input<String> location;
  /// The private connectivity identifier.
  final pulumi.Input<String> privateConnectionId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The PSC Interface configuration is used to create PSC Interface
  /// between Datastream and the consumer's PSC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionPscInterfaceConfig>? pscInterfaceConfig;
  /// The VPC Peering configuration is used to create VPC peering
  /// between Datastream and the consumer's VPC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionVpcPeeringConfig>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionArgs].
  /// [createWithoutValidation] If set to true, will skip validations.
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] The name of the location this private connection is located in.
  /// [privateConnectionId] The private connectivity identifier.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] The PSC Interface configuration is used to create PSC Interface
  /// [vpcPeeringConfig] The VPC Peering configuration is used to create VPC peering
  PrivateConnectionArgs({
    this.createWithoutValidation,
    required this.displayName,
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
      'displayName': displayName,
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
      createWithoutValidation: map['createWithoutValidation'] == null ? null : (map['createWithoutValidation'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      privateConnectionId: (map['privateConnectionId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pscInterfaceConfig: map['pscInterfaceConfig'] == null ? null : (PrivateConnectionPscInterfaceConfig.fromMap((map['pscInterfaceConfig'] as Map).cast<String, dynamic>())).input(),
      vpcPeeringConfig: map['vpcPeeringConfig'] == null ? null : (PrivateConnectionVpcPeeringConfig.fromMap((map['vpcPeeringConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

