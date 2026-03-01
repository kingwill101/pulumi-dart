// ignore_for_file: unused_element, unnecessary_cast

import 'service_task_spec_resources_limits.dart';
import 'service_task_spec_resources_reservation.dart';

class ServiceTaskSpecResources {
  /// Describes the resources which can be advertised by a node and requested by a task
  final ServiceTaskSpecResourcesLimits? limits;
  /// An object describing the resources which can be advertised by a node and requested by a task
  final ServiceTaskSpecResourcesReservation? reservation;

  /// Creates a new [ServiceTaskSpecResources].
  /// [limits] Describes the resources which can be advertised by a node and requested by a task
  /// [reservation] An object describing the resources which can be advertised by a node and requested by a task
  ServiceTaskSpecResources({
    this.limits,
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits == null ? null : limits!.toMap(),
      'reservation': ?reservation == null ? null : reservation!.toMap(),
    };
  }

  factory ServiceTaskSpecResources.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecResources(
      limits: map['limits'] == null ? null : ServiceTaskSpecResourcesLimits.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      reservation: map['reservation'] == null ? null : ServiceTaskSpecResourcesReservation.fromMap((map['reservation'] as Map).cast<String, dynamic>()),
    );
  }
}

