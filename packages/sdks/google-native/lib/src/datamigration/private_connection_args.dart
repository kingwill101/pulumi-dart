// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_config.dart';

/// {@template pulumi_datamigration_v1_private_connection_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_private_connection_args_doc}
class PrivateConnectionArgs {
  /// The private connection display name.
  final pulumi.Input<String>? displayName;
  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The name of the resource.
  final pulumi.Input<String>? name;
  /// Required. The private connection identifier.
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;
  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. If set to true, will skip validations.
  final pulumi.Input<bool>? skipValidation;
  /// VPC peering configuration.
  final pulumi.Input<VpcPeeringConfig>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionArgs].
  /// [displayName] The private connection display name.
  /// [labels] The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [location] Optional.
  /// [name] The name of the resource.
  /// [privateConnectionId] Required. The private connection identifier.
  /// [project] Optional.
  /// [requestId] Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [skipValidation] Optional. If set to true, will skip validations.
  /// [vpcPeeringConfig] VPC peering configuration.
  PrivateConnectionArgs({
    this.displayName,
    this.labels,
    this.location,
    this.name,
    required this.privateConnectionId,
    this.project,
    this.requestId,
    this.skipValidation,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'requestId': ?requestId,
      'skipValidation': ?skipValidation,
      'vpcPeeringConfig': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConfig, Map<String, dynamic>>(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateConnectionId: (map['privateConnectionId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      skipValidation: map['skipValidation'] == null ? null : (map['skipValidation']! as bool).input(),
      vpcPeeringConfig: map['vpcPeeringConfig'] == null ? null : (VpcPeeringConfig.fromMap((map['vpcPeeringConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

