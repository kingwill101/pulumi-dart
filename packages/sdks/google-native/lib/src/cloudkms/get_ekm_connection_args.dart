// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_ekm_connection_args_doc}
/// Arguments for getEkmConnection.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_ekm_connection_args_doc}
class GetEkmConnectionArgs {
  final pulumi.Input<String> ekmConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEkmConnectionArgs].
  /// [ekmConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEkmConnectionArgs({
    required pulumi.Output<String> ekmConnectionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      ekmConnectionId = pulumi.Input.asInput<String>(ekmConnectionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmConnectionId': ekmConnectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionArgs(
      ekmConnectionId: pulumi.Output.create<String>(map['ekmConnectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

