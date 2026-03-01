// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_connection_profile_datastream_v1alpha1_args_doc}
/// Arguments for getConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_connection_profile_datastream_v1alpha1_args_doc}
class GetConnectionProfileDatastreamV1alpha1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileDatastreamV1alpha1Args].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectionProfileDatastreamV1alpha1Args({
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

  factory GetConnectionProfileDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileDatastreamV1alpha1Args(
      connectionProfileId: pulumi.Output.create<String>(map['connectionProfileId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

