// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';
import 'future_reservation_specific_skuproperties_response.dart';
import 'future_reservation_status_response.dart';
import 'future_reservation_time_window_response.dart';
import 'share_settings_response.dart';

/// Result data returned by getFutureReservation.
class GetFutureReservationResult {
  /// Future timestamp when the FR auto-created reservations will be deleted by GCE. Format of this field must be a valid href="https://www.ietf.org/rfc/rfc3339.txt"&gt;RFC3339 value.
  final String? autoCreatedReservationsDeleteTime;
  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation start_time when auto-created reservations will be automatically deleted by GCE. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  final DurationResponse? autoCreatedReservationsDuration;
  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [auto_created_reservations_delete_time, auto_created_reservations_duration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  final bool? autoDeleteAutoCreatedReservations;
  /// The creation timestamp for this future reservation in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the future reservation.
  final String? description;
  /// Type of the resource. Always compute#futureReservation for future reservations.
  final String? kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final String? namePrefix;
  /// Planning state before being submitted for evaluation
  final String? planningStatus;
  /// Server-defined fully-qualified URL for this resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// List of Projects/Folders to share with.
  final ShareSettingsResponse? shareSettings;
  /// Future Reservation configuration to indicate instance properties and total count.
  final FutureReservationSpecificSKUPropertiesResponse? specificSkuProperties;
  /// [Output only] Status of the Future Reservation
  final FutureReservationStatusResponse? status;
  /// Time window for this Future Reservation.
  final FutureReservationTimeWindowResponse? timeWindow;
  /// URL of the Zone where this future reservation resides.
  final String? zone;

  /// Creates a new [GetFutureReservationResult].
  /// [autoCreatedReservationsDeleteTime] Future timestamp when the FR auto-created reservations will be deleted by GCE. Format of this field must be a valid href="https://www.ietf.org/rfc/rfc3339.txt"&gt;RFC3339 value.
  /// [autoCreatedReservationsDuration] Specifies the duration of auto-created reservations. It represents relative time to future reservation start_time when auto-created reservations will be automatically deleted by GCE. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// [autoDeleteAutoCreatedReservations] Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [auto_created_reservations_delete_time, auto_created_reservations_duration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  /// [creationTimestamp] The creation timestamp for this future reservation in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the future reservation.
  /// [kind] Type of the resource. Always compute#futureReservation for future reservations.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [namePrefix] Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  /// [planningStatus] Planning state before being submitted for evaluation
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [shareSettings] List of Projects/Folders to share with.
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  /// [status] [Output only] Status of the Future Reservation
  /// [timeWindow] Time window for this Future Reservation.
  /// [zone] URL of the Zone where this future reservation resides.
  const GetFutureReservationResult({
    this.autoCreatedReservationsDeleteTime,
    this.autoCreatedReservationsDuration,
    this.autoDeleteAutoCreatedReservations,
    this.creationTimestamp,
    this.description,
    this.kind,
    this.name,
    this.namePrefix,
    this.planningStatus,
    this.selfLink,
    this.selfLinkWithId,
    this.shareSettings,
    this.specificSkuProperties,
    this.status,
    this.timeWindow,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreatedReservationsDeleteTime': ?autoCreatedReservationsDeleteTime,
      'autoCreatedReservationsDuration': ?autoCreatedReservationsDuration?.toMap(),
      'autoDeleteAutoCreatedReservations': ?autoDeleteAutoCreatedReservations,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'kind': ?kind,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'planningStatus': ?planningStatus,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shareSettings': ?shareSettings?.toMap(),
      'specificSkuProperties': ?specificSkuProperties?.toMap(),
      'status': ?status?.toMap(),
      'timeWindow': ?timeWindow?.toMap(),
      'zone': ?zone,
    };
  }

  factory GetFutureReservationResult.fromMap(Map<String, dynamic> map) {
    return GetFutureReservationResult(
      autoCreatedReservationsDeleteTime: (() { final guardedValue = map['autoCreatedReservationsDeleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoCreatedReservationsDuration: (() { final guardedValue = map['autoCreatedReservationsDuration']; if (guardedValue == null) return null; return DurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoDeleteAutoCreatedReservations: (() { final guardedValue = map['autoDeleteAutoCreatedReservations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      planningStatus: (() { final guardedValue = map['planningStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return ShareSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      specificSkuProperties: (() { final guardedValue = map['specificSkuProperties']; if (guardedValue == null) return null; return FutureReservationSpecificSKUPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return FutureReservationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeWindow: (() { final guardedValue = map['timeWindow']; if (guardedValue == null) return null; return FutureReservationTimeWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
