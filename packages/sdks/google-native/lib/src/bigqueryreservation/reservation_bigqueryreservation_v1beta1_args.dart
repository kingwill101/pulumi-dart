// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryreservation_v1beta1_reservation_bigqueryreservation_v1beta1_args_doc}
/// The set of arguments for Reservation.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1beta1_reservation_bigqueryreservation_v1beta1_args_doc}
class ReservationBigqueryreservationV1beta1Args {
  /// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  final pulumi.Input<String>? concurrency;
  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  final pulumi.Input<bool>? ignoreIdleSlots;
  final pulumi.Input<String>? location;
  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
  final pulumi.Input<bool>? multiRegionAuxiliary;
  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final pulumi.Input<String>? reservationId;
  /// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If the new reservation's slot capacity exceeds the project's slot capacity or if total slot capacity of the new reservation and its siblings exceeds the project's slot capacity, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions, slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.
  final pulumi.Input<String>? slotCapacity;

  /// Creates a new [ReservationBigqueryreservationV1beta1Args].
  /// [concurrency] Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  /// [ignoreIdleSlots] If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  /// [location] Optional.
  /// [multiRegionAuxiliary] Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
  /// [name] The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  /// [project] Optional.
  /// [reservationId] The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  /// [slotCapacity] Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If the new reservation's slot capacity exceeds the project's slot capacity or if total slot capacity of the new reservation and its siblings exceeds the project's slot capacity, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions, slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.
  const ReservationBigqueryreservationV1beta1Args({
    this.concurrency,
    this.ignoreIdleSlots,
    this.location,
    this.multiRegionAuxiliary,
    this.name,
    this.project,
    this.reservationId,
    this.slotCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrency': ?concurrency,
      'ignoreIdleSlots': ?ignoreIdleSlots,
      'location': ?location,
      'multiRegionAuxiliary': ?multiRegionAuxiliary,
      'name': ?name,
      'project': ?project,
      'reservationId': ?reservationId,
      'slotCapacity': ?slotCapacity,
    };
  }

  factory ReservationBigqueryreservationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ReservationBigqueryreservationV1beta1Args(
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreIdleSlots: (() { final guardedValue = map['ignoreIdleSlots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiRegionAuxiliary: (() { final guardedValue = map['multiRegionAuxiliary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationId: (() { final guardedValue = map['reservationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotCapacity: (() { final guardedValue = map['slotCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
