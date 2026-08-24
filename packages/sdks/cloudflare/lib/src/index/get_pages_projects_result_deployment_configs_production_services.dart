// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionServices {
  /// The entrypoint to bind to.
  final pulumi.Input<String> entrypoint;
  /// The Service environment.
  final pulumi.Input<String> environment;
  /// The Service name.
  final pulumi.Input<String> service;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionServices].
  /// [entrypoint] The entrypoint to bind to.
  /// [environment] The Service environment.
  /// [service] The Service name.
  const GetPagesProjectsResultDeploymentConfigsProductionServices({
    required this.entrypoint,
    required this.environment,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrypoint': entrypoint,
      'environment': environment,
      'service': service,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionServices.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionServices(
      entrypoint: pulumi.Input.fromValue(map['entrypoint'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
