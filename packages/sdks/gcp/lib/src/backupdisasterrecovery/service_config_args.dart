// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_service_config_service_config_args_doc}
/// The set of arguments for ServiceConfig.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_service_config_service_config_args_doc}
class ServiceConfigArgs {
  /// The location in which the Service config is to be initialized.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The resource type to which the default service config will be applied.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ServiceConfigArgs].
  /// [location] The location in which the Service config is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] The resource type to which the default service config will be applied.
  const ServiceConfigArgs({
    required this.location,
    this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'resourceType': resourceType,
    };
  }

  factory ServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConfigArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
