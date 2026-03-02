// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_app_engine_service_get_app_engine_service_args_doc}
/// Arguments for getAppEngineService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_app_engine_service_get_app_engine_service_args_doc}
class GetAppEngineServiceArgs {
  /// The ID of the App Engine module underlying this
  /// service. Corresponds to the moduleId resource label in the [gae_app](https://cloud.google.com/monitoring/api/resources#tag_gae_app) monitored resource, or the service/module name.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String> moduleId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppEngineServiceArgs].
  /// [moduleId] The ID of the App Engine module underlying this
  /// [project] The ID of the project in which the resource belongs.
  GetAppEngineServiceArgs({
    required this.moduleId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'project': ?project,
    };
  }

  factory GetAppEngineServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceArgs(
      moduleId: (map['moduleId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

