// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_private_cloud_get_private_cloud_args_doc}
/// Arguments for getPrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_private_cloud_get_private_cloud_args_doc}
class GetPrivateCloudArgs {
  /// Location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateCloudArgs].
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs. If it
  const GetPrivateCloudArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetPrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
