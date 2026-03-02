// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_resources_reservation_generic_resources.dart';

class ServiceTaskSpecResourcesReservation {
  /// User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, GPU=UUID1)
  final pulumi.Input<ServiceTaskSpecResourcesReservationGenericResources>? genericResources;
  /// The amounf of memory in bytes the container allocates
  final pulumi.Input<int>? memoryBytes;
  /// CPU shares in units of 1/1e9 (or 10^-9) of the CPU. Should be at least `1000000`
  final pulumi.Input<int>? nanoCpus;

  /// Creates a new [ServiceTaskSpecResourcesReservation].
  /// [genericResources] User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, GPU=UUID1)
  /// [memoryBytes] The amounf of memory in bytes the container allocates
  /// [nanoCpus] CPU shares in units of 1/1e9 (or 10^-9) of the CPU. Should be at least `1000000`
  ServiceTaskSpecResourcesReservation({
    this.genericResources,
    this.memoryBytes,
    this.nanoCpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericResources': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecResourcesReservationGenericResources, Map<String, dynamic>>(genericResources, (value) => value.toMap()),
      'memoryBytes': ?memoryBytes,
      'nanoCpus': ?nanoCpus,
    };
  }

  factory ServiceTaskSpecResourcesReservation.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecResourcesReservation(
      genericResources: map['genericResources'] == null ? null : (ServiceTaskSpecResourcesReservationGenericResources.fromMap((map['genericResources']! as Map).cast<String, dynamic>())).input(),
      memoryBytes: map['memoryBytes'] == null ? null : (map['memoryBytes']! as int).input(),
      nanoCpus: map['nanoCpus'] == null ? null : (map['nanoCpus']! as int).input(),
    );
  }
}

