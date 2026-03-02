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
  ServiceState({
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
      checkIfServiceHasUsageOnDestroy: map['checkIfServiceHasUsageOnDestroy'] == null ? null : (map['checkIfServiceHasUsageOnDestroy']! as bool).input(),
      disableDependentServices: map['disableDependentServices'] == null ? null : (map['disableDependentServices']! as bool).input(),
      disableOnDestroy: map['disableOnDestroy'] == null ? null : (map['disableOnDestroy']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

