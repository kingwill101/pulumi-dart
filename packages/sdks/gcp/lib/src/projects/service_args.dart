// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_projects_service_service_args_doc}
class ServiceArgs {
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
  final pulumi.Input<String> service;

  /// Creates a new [ServiceArgs].
  /// [checkIfServiceHasUsageOnDestroy] Beta
  /// [disableDependentServices] If `true`, services that are enabled
  /// [disableOnDestroy] Optional.
  /// [project] The project ID. If not provided, the provider project
  /// [service] The service to enable.
  ServiceArgs({
    this.checkIfServiceHasUsageOnDestroy,
    this.disableDependentServices,
    this.disableOnDestroy,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIfServiceHasUsageOnDestroy': ?checkIfServiceHasUsageOnDestroy,
      'disableDependentServices': ?disableDependentServices,
      'disableOnDestroy': ?disableOnDestroy,
      'project': ?project,
      'service': service,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      checkIfServiceHasUsageOnDestroy: (() {
        final guardedValue = map['checkIfServiceHasUsageOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableDependentServices: (() {
        final guardedValue = map['disableDependentServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableOnDestroy: (() {
        final guardedValue = map['disableOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
