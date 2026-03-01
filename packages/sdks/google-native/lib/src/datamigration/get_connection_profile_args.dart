// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_connection_profile_args_doc}
/// Arguments for getConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_connection_profile_args_doc}
class GetConnectionProfileArgs {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileArgs].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectionProfileArgs({
    required pulumi.Output<String> connectionProfileId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProfileId': connectionProfileId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileArgs(
      connectionProfileId: pulumi.Output.create<String>(map['connectionProfileId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

