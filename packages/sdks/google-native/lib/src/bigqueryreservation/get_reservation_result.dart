// ignore_for_file: unused_element, unnecessary_cast

import 'autoscale_response.dart';

/// Result data returned by getReservation.
class GetReservationResult {
  /// The configuration parameters for the auto scaling feature.
  final AutoscaleResponse autoscale;
  /// Job concurrency target which sets a soft upper bound on the number of jobs that can run concurrently in this reservation. This is a soft target due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency target will be automatically computed by the system. NOTE: this field is exposed as `target_job_concurrency` in the Information Schema, DDL and BQ CLI.
  final String concurrency;
  /// Creation time of the reservation.
  final String creationTime;
  /// Edition of the reservation.
  final String edition;
  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  final bool ignoreIdleSlots;
  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  final bool multiRegionAuxiliary;
  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final String name;
  /// Baseline slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false, or autoscaling is enabled. If edition is EDITION_UNSPECIFIED and total slot_capacity of the reservation and its siblings exceeds the total slot_count of all capacity commitments, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. If edition is any value but EDITION_UNSPECIFIED, then the above requirement is not needed. The total slot_capacity of the reservation and its siblings may exceed the total slot_count of capacity commitments. In that case, the exceeding slots will be charged with the autoscale SKU. You can increase the number of baseline slots in a reservation every few minutes. If you want to decrease your baseline slots, you are limited to once an hour if you have recently changed your baseline slot capacity and your baseline slots exceed your committed slots. Otherwise, you can decrease your baseline slots every few minutes.
  final String slotCapacity;
  /// Last update time of the reservation.
  final String updateTime;

  /// Creates a new [GetReservationResult].
  /// [autoscale] The configuration parameters for the auto scaling feature.
  /// [concurrency] Job concurrency target which sets a soft upper bound on the number of jobs that can run concurrently in this reservation. This is a soft target due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency target will be automatically computed by the system. NOTE: this field is exposed as `target_job_concurrency` in the Information Schema, DDL and BQ CLI.
  /// [creationTime] Creation time of the reservation.
  /// [edition] Edition of the reservation.
  /// [ignoreIdleSlots] If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  /// [multiRegionAuxiliary] Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  /// [name] The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  /// [slotCapacity] Baseline slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false, or autoscaling is enabled. If edition is EDITION_UNSPECIFIED and total slot_capacity of the reservation and its siblings exceeds the total slot_count of all capacity commitments, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. If edition is any value but EDITION_UNSPECIFIED, then the above requirement is not needed. The total slot_capacity of the reservation and its siblings may exceed the total slot_count of capacity commitments. In that case, the exceeding slots will be charged with the autoscale SKU. You can increase the number of baseline slots in a reservation every few minutes. If you want to decrease your baseline slots, you are limited to once an hour if you have recently changed your baseline slot capacity and your baseline slots exceed your committed slots. Otherwise, you can decrease your baseline slots every few minutes.
  /// [updateTime] Last update time of the reservation.
  GetReservationResult({
    required this.autoscale,
    required this.concurrency,
    required this.creationTime,
    required this.edition,
    required this.ignoreIdleSlots,
    required this.multiRegionAuxiliary,
    required this.name,
    required this.slotCapacity,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscale': autoscale.toMap(),
      'concurrency': concurrency,
      'creationTime': creationTime,
      'edition': edition,
      'ignoreIdleSlots': ignoreIdleSlots,
      'multiRegionAuxiliary': multiRegionAuxiliary,
      'name': name,
      'slotCapacity': slotCapacity,
      'updateTime': updateTime,
    };
  }

  factory GetReservationResult.fromMap(Map<String, dynamic> map) {
    return GetReservationResult(
      autoscale: AutoscaleResponse.fromMap((map['autoscale'] as Map).cast<String, dynamic>()),
      concurrency: map['concurrency'] as String,
      creationTime: map['creationTime'] as String,
      edition: map['edition'] as String,
      ignoreIdleSlots: map['ignoreIdleSlots'] as bool,
      multiRegionAuxiliary: map['multiRegionAuxiliary'] as bool,
      name: map['name'] as String,
      slotCapacity: map['slotCapacity'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

