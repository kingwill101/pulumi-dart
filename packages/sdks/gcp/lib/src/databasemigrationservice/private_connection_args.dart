// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_vpc_peering_config.dart';

/// {@template pulumi_databasemigrationservice_private_connection_private_connection_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_databasemigrationservice_private_connection_private_connection_args_doc}
class PrivateConnectionArgs {
  /// If set to true, will skip validations.
  final pulumi.Input<bool>? createWithoutValidation;
  /// Display name.
  final pulumi.Input<String>? displayName;
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
  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionVpcPeeringConfig> vpcPeeringConfig;

  /// Creates a new [PrivateConnectionArgs].
  /// [createWithoutValidation] If set to true, will skip validations.
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] The name of the location this private connection is located in.
  /// [privateConnectionId] The private connectivity identifier.
  /// [project] The ID of the project in which the resource belongs.
  /// [vpcPeeringConfig] The VPC Peering configuration is used to create VPC peering
  PrivateConnectionArgs({
    pulumi.Output<bool>? createWithoutValidation,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<String> privateConnectionId,
    pulumi.Output<String>? project,
    required pulumi.Output<PrivateConnectionVpcPeeringConfig> vpcPeeringConfig,
  }) :
      createWithoutValidation = pulumi.Input.asOptionalInput<bool>(createWithoutValidation),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
      project = pulumi.Input.asOptionalInput<String>(project),
      vpcPeeringConfig = pulumi.Input.asInput<PrivateConnectionVpcPeeringConfig>(vpcPeeringConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createWithoutValidation': ?createWithoutValidation,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'vpcPeeringConfig': pulumi.Input.mapInputValue<PrivateConnectionVpcPeeringConfig, Map<String, dynamic>>(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      createWithoutValidation: map['createWithoutValidation'] == null ? null : pulumi.Output.create<bool>(map['createWithoutValidation'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      privateConnectionId: pulumi.Output.create<String>(map['privateConnectionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vpcPeeringConfig: pulumi.Output.create<PrivateConnectionVpcPeeringConfig>(PrivateConnectionVpcPeeringConfig.fromMap((map['vpcPeeringConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

