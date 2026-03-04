// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_beta.dart';
import 'future_reservation_planning_status_compute_beta.dart';
import 'future_reservation_specific_skuproperties_compute_beta.dart';
import 'future_reservation_time_window_compute_beta.dart';
import 'share_settings_compute_beta.dart';

/// {@template pulumi_compute_beta_future_reservation_compute_beta_args_doc}
/// The set of arguments for FutureReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_future_reservation_compute_beta_args_doc}
class FutureReservationComputeBetaArgs {
  /// Future timestamp when the FR auto-created reservations will be deleted by GCE. Format of this field must be a valid href="https://www.ietf.org/rfc/rfc3339.txt"&gt;RFC3339 value.
  final pulumi.Input<String>? autoCreatedReservationsDeleteTime;

  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation start_time when auto-created reservations will be automatically deleted by GCE. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  final pulumi.Input<DurationComputeBeta>? autoCreatedReservationsDuration;

  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [auto_created_reservations_delete_time, auto_created_reservations_duration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  final pulumi.Input<bool>? autoDeleteAutoCreatedReservations;

  /// An optional description of this resource. Provide this property when you create the future reservation.
  final pulumi.Input<String>? description;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final pulumi.Input<String>? namePrefix;

  /// Planning state before being submitted for evaluation
  final pulumi.Input<FutureReservationPlanningStatusComputeBeta>?
  planningStatus;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// List of Projects/Folders to share with.
  final pulumi.Input<ShareSettingsComputeBeta>? shareSettings;

  /// Future Reservation configuration to indicate instance properties and total count.
  final pulumi.Input<FutureReservationSpecificSKUPropertiesComputeBeta>?
  specificSkuProperties;

  /// Time window for this Future Reservation.
  final pulumi.Input<FutureReservationTimeWindowComputeBeta>? timeWindow;
  final pulumi.Input<String>? zone;

  /// Creates a new [FutureReservationComputeBetaArgs].
  /// [autoCreatedReservationsDeleteTime] Future timestamp when the FR auto-created reservations will be deleted by GCE. Format of this field must be a valid href="https://www.ietf.org/rfc/rfc3339.txt"&gt;RFC3339 value.
  /// [autoCreatedReservationsDuration] Specifies the duration of auto-created reservations. It represents relative time to future reservation start_time when auto-created reservations will be automatically deleted by GCE. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// [autoDeleteAutoCreatedReservations] Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [auto_created_reservations_delete_time, auto_created_reservations_duration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  /// [description] An optional description of this resource. Provide this property when you create the future reservation.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [namePrefix] Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  /// [planningStatus] Planning state before being submitted for evaluation
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [shareSettings] List of Projects/Folders to share with.
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  /// [timeWindow] Time window for this Future Reservation.
  /// [zone] Optional.
  FutureReservationComputeBetaArgs({
    this.autoCreatedReservationsDeleteTime,
    this.autoCreatedReservationsDuration,
    this.autoDeleteAutoCreatedReservations,
    this.description,
    this.name,
    this.namePrefix,
    this.planningStatus,
    this.project,
    this.requestId,
    this.shareSettings,
    this.specificSkuProperties,
    this.timeWindow,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreatedReservationsDeleteTime': ?autoCreatedReservationsDeleteTime,
      'autoCreatedReservationsDuration':
          ?pulumi.Input.mapOptionalInputValue<
            DurationComputeBeta,
            Map<String, dynamic>
          >(autoCreatedReservationsDuration, (value) => value.toMap()),
      'autoDeleteAutoCreatedReservations': ?autoDeleteAutoCreatedReservations,
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'planningStatus':
          ?pulumi.Input.mapOptionalInputValue<
            FutureReservationPlanningStatusComputeBeta,
            String
          >(planningStatus, (value) => value.wireValue),
      'project': ?project,
      'requestId': ?requestId,
      'shareSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ShareSettingsComputeBeta,
            Map<String, dynamic>
          >(shareSettings, (value) => value.toMap()),
      'specificSkuProperties':
          ?pulumi.Input.mapOptionalInputValue<
            FutureReservationSpecificSKUPropertiesComputeBeta,
            Map<String, dynamic>
          >(specificSkuProperties, (value) => value.toMap()),
      'timeWindow':
          ?pulumi.Input.mapOptionalInputValue<
            FutureReservationTimeWindowComputeBeta,
            Map<String, dynamic>
          >(timeWindow, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory FutureReservationComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return FutureReservationComputeBetaArgs(
      autoCreatedReservationsDeleteTime: (() {
        final guardedValue = map['autoCreatedReservationsDeleteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoCreatedReservationsDuration: (() {
        final guardedValue = map['autoCreatedReservationsDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DurationComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoDeleteAutoCreatedReservations: (() {
        final guardedValue = map['autoDeleteAutoCreatedReservations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planningStatus: (() {
        final guardedValue = map['planningStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FutureReservationPlanningStatusComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareSettings: (() {
        final guardedValue = map['shareSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShareSettingsComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      specificSkuProperties: (() {
        final guardedValue = map['specificSkuProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FutureReservationSpecificSKUPropertiesComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeWindow: (() {
        final guardedValue = map['timeWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FutureReservationTimeWindowComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
