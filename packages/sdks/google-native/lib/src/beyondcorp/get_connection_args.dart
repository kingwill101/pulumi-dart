// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_connection_args_doc}
class GetConnectionArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionArgs].
  /// [connectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectionArgs({
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      connectionId = pulumi.Input.asInput<String>(connectionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

