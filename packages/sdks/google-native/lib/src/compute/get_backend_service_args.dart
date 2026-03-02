// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_backend_service_args_doc}
/// Arguments for getBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_backend_service_args_doc}
class GetBackendServiceArgs {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendServiceArgs].
  /// [backendService] Required.
  /// [project] Optional.
  GetBackendServiceArgs({
    required this.backendService,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'project': ?project,
    };
  }

  factory GetBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceArgs(
      backendService: (map['backendService'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

