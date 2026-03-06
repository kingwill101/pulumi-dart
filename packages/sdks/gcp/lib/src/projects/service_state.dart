// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Beta
  /// If `true`, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  final pulumi.Input<bool>? checkIfServiceHasUsageOnDestroy;
  /// If `true`, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If `false` or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  final pulumi.Input<bool>? disableDependentServices;
  final pulumi.Input<bool>? disableOnDestroy;
  /// The project ID. If not provided, the provider project
  /// is used.
  final pulumi.Input<String>? project;
  /// The service to enable.
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceState].
  /// [checkIfServiceHasUsageOnDestroy] Beta
  /// [disableDependentServices] If `true`, services that are enabled
  /// [disableOnDestroy] Optional.
  /// [project] The project ID. If not provided, the provider project
  /// [service] The service to enable.
  const ServiceState({
    this.checkIfServiceHasUsageOnDestroy,
    this.disableDependentServices,
    this.disableOnDestroy,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIfServiceHasUsageOnDestroy': ?checkIfServiceHasUsageOnDestroy,
      'disableDependentServices': ?disableDependentServices,
      'disableOnDestroy': ?disableOnDestroy,
      'project': ?project,
      'service': ?service,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      checkIfServiceHasUsageOnDestroy: (() { final guardedValue = map['checkIfServiceHasUsageOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableDependentServices: (() { final guardedValue = map['disableDependentServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableOnDestroy: (() { final guardedValue = map['disableOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

