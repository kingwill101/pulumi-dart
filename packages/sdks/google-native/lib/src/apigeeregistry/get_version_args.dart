// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> versionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

