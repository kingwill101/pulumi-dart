// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_resources_limits.dart';
import 'service_task_spec_resources_reservation.dart';

class ServiceTaskSpecResources {
  /// Describes the resources which can be advertised by a node and requested by a task
  final pulumi.Input<ServiceTaskSpecResourcesLimits>? limits;
  /// An object describing the resources which can be advertised by a node and requested by a task
  final pulumi.Input<ServiceTaskSpecResourcesReservation>? reservation;

  /// Creates a new [ServiceTaskSpecResources].
  /// [limits] Describes the resources which can be advertised by a node and requested by a task
  /// [reservation] An object describing the resources which can be advertised by a node and requested by a task
  ServiceTaskSpecResources({
    this.limits,
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecResourcesLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'reservation': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecResourcesReservation, Map<String, dynamic>>(reservation, (value) => value.toMap()),
    };
  }

  factory ServiceTaskSpecResources.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecResources(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTaskSpecResourcesLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reservation: (() { final guardedValue = map['reservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTaskSpecResourcesReservation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

