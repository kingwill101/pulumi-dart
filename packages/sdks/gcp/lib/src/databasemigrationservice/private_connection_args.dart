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
  const PrivateConnectionArgs({
    this.createWithoutValidation,
    this.displayName,
    this.labels,
    required this.location,
    required this.privateConnectionId,
    this.project,
    required this.vpcPeeringConfig,
  });

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
      createWithoutValidation: (() { final guardedValue = map['createWithoutValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateConnectionId: pulumi.Input.fromValue(map['privateConnectionId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConfig: pulumi.Input.fromValue(PrivateConnectionVpcPeeringConfig.fromMap((map['vpcPeeringConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

