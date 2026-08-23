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
  const PrivateConnectionArgs({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateConnectionId: pulumi.Input.fromValue(map['privateConnectionId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipValidation: (() { final guardedValue = map['skipValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcPeeringConfig: (() { final guardedValue = map['vpcPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
