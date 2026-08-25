// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_delete_after_duration.dart';
import 'reservation_params.dart';
import 'reservation_reservation_sharing_policy.dart';
import 'reservation_share_settings.dart';
import 'reservation_specific_reservation.dart';

/// {@template pulumi_compute_reservation_reservation_args_doc}
/// The set of arguments for Reservation.
/// {@endtemplate}
/// {@macro pulumi_compute_reservation_reservation_args_doc}
class ReservationArgs {
  /// Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// Structure is documented below.
  final pulumi.Input<ReservationDeleteAfterDuration?>? deleteAfterDuration;
  /// Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// Cannot be used with delete_after_duration.
  final pulumi.Input<String?>? deleteAtTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// (Optional, Beta)
  /// Indicates if this group of VMs have emergent maintenance enabled.
  final pulumi.Input<bool?>? enableEmergentMaintenance;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<ReservationParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Sharing policy for reservations with Google Cloud managed services.
  /// Structure is documented below.
  final pulumi.Input<ReservationReservationSharingPolicy?>? reservationSharingPolicy;
  /// The share setting for reservations.
  /// Structure is documented below.
  final pulumi.Input<ReservationShareSettings?>? shareSettings;
  /// Reservation for instances with specific machine shapes.
  /// Structure is documented below.
  final pulumi.Input<ReservationSpecificReservation> specificReservation;
  /// When set to true, only VMs that target this reservation by name can
  /// consume this reservation. Otherwise, it can be consumed by VMs with
  /// affinity for any reservation. Defaults to false.
  final pulumi.Input<bool?>? specificReservationRequired;
  /// The zone where the reservation is made.
  final pulumi.Input<String> zone;

  /// Creates a new [ReservationArgs].
  /// [deleteAfterDuration] Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// [deleteAtTime] Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [enableEmergentMaintenance] (Optional, Beta)
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationSharingPolicy] Sharing policy for reservations with Google Cloud managed services.
  /// [shareSettings] The share setting for reservations.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] When set to true, only VMs that target this reservation by name can
  /// [zone] The zone where the reservation is made.
  const ReservationArgs({
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.deletionPolicy,
    this.description,
    this.enableEmergentMaintenance,
    this.name,
    this.params,
    this.project,
    this.reservationSharingPolicy,
    this.shareSettings,
    required this.specificReservation,
    this.specificReservationRequired,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfterDuration': ?pulumi.Input.mapOptionalInputValue<ReservationDeleteAfterDuration, Map<String, dynamic>>(deleteAfterDuration, (value) => value.toMap()),
      'deleteAtTime': ?deleteAtTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enableEmergentMaintenance': ?enableEmergentMaintenance,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<ReservationParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'reservationSharingPolicy': ?pulumi.Input.mapOptionalInputValue<ReservationReservationSharingPolicy, Map<String, dynamic>>(reservationSharingPolicy, (value) => value.toMap()),
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<ReservationShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': pulumi.Input.mapInputValue<ReservationSpecificReservation, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'zone': zone,
    };
  }

  factory ReservationArgs.fromMap(Map<String, dynamic> map) {
    return ReservationArgs(
      deleteAfterDuration: (() { final guardedValue = map['deleteAfterDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationDeleteAfterDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteAtTime: (() { final guardedValue = map['deleteAtTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableEmergentMaintenance: (() { final guardedValue = map['enableEmergentMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationSharingPolicy: (() { final guardedValue = map['reservationSharingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationReservationSharingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specificReservation: pulumi.Input.fromValue(ReservationSpecificReservation.fromMap((map['specificReservation']! as Map).cast<String, dynamic>())),
      specificReservationRequired: (() { final guardedValue = map['specificReservationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
