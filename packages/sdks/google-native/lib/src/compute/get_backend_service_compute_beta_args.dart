// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_backend_service_compute_beta_args_doc}
/// Arguments for getBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_backend_service_compute_beta_args_doc}
class GetBackendServiceComputeBetaArgs {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendServiceComputeBetaArgs].
  /// [backendService] Required.
  /// [project] Optional.
  const GetBackendServiceComputeBetaArgs({
    required this.backendService,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'project': ?project,
    };
  }

  factory GetBackendServiceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceComputeBetaArgs(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
