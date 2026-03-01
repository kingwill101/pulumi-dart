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
  GetBackendServiceComputeBetaArgs({
    required pulumi.Output<String> backendService,
    pulumi.Output<String>? project,
  }) :
      backendService = pulumi.Input.asInput<String>(backendService),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'project': ?project,
    };
  }

  factory GetBackendServiceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceComputeBetaArgs(
      backendService: pulumi.Output.create<String>(map['backendService'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

