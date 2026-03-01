// ignore_for_file: unused_element, unnecessary_cast

import 'service_task_spec_resources_reservation_generic_resources.dart';

class ServiceTaskSpecResourcesReservation {
  /// User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, GPU=UUID1)
  final ServiceTaskSpecResourcesReservationGenericResources? genericResources;
  /// The amounf of memory in bytes the container allocates
  final int? memoryBytes;
  /// CPU shares in units of 1/1e9 (or 10^-9) of the CPU. Should be at least `1000000`
  final int? nanoCpus;

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
      'genericResources': ?genericResources == null ? null : genericResources!.toMap(),
      'memoryBytes': ?memoryBytes,
      'nanoCpus': ?nanoCpus,
    };
  }

  factory ServiceTaskSpecResourcesReservation.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecResourcesReservation(
      genericResources: map['genericResources'] == null ? null : ServiceTaskSpecResourcesReservationGenericResources.fromMap((map['genericResources'] as Map).cast<String, dynamic>()),
      memoryBytes: map['memoryBytes'] == null ? null : map['memoryBytes'] as int,
      nanoCpus: map['nanoCpus'] == null ? null : map['nanoCpus'] as int,
    );
  }
}

