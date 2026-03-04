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
    required this.location,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetPrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
