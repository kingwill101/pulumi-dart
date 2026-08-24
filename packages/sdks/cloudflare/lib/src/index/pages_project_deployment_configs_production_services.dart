// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionServices {
  /// The entrypoint to bind to.
  final pulumi.Input<String?>? entrypoint;
  /// The Service environment.
  final pulumi.Input<String?>? environment;
  /// The Service name.
  final pulumi.Input<String> service;

  /// Creates a new [PagesProjectDeploymentConfigsProductionServices].
  /// [entrypoint] The entrypoint to bind to.
  /// [environment] The Service environment.
  /// [service] The Service name.
  const PagesProjectDeploymentConfigsProductionServices({
    this.entrypoint,
    this.environment,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrypoint': ?entrypoint,
      'environment': ?environment,
      'service': service,
    };
  }

  factory PagesProjectDeploymentConfigsProductionServices.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionServices(
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
