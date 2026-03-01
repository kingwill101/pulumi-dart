// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_private_cloud_args_doc}
/// Arguments for getPrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_private_cloud_args_doc}
class GetPrivateCloudArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateCloudArgs].
  /// [location] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetPrivateCloudArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> privateCloudId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetPrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

