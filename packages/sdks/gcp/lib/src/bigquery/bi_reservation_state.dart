// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_reservation_preferred_table.dart';

/// Input properties used for looking up and filtering BiReservation resources.
class BiReservationState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// LOCATION_DESCRIPTION
  final pulumi.Input<String?>? location;
  /// The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  final pulumi.Input<String?>? name;
  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  final pulumi.Input<List<BiReservationPreferredTable>?>? preferredTables;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Size of a reservation, in bytes.
  final pulumi.Input<int?>? size;
  /// The last update timestamp of a reservation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [BiReservationState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] LOCATION_DESCRIPTION
  /// [name] The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  /// [preferredTables] Preferred tables to use BI capacity for.
  /// [project] The ID of the project in which the resource belongs.
  /// [size] Size of a reservation, in bytes.
  /// [updateTime] The last update timestamp of a reservation.
  const BiReservationState({
    this.deletionPolicy,
    this.location,
    this.name,
    this.preferredTables,
    this.project,
    this.size,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'preferredTables': ?pulumi.Input.mapOptionalInputValue<List<BiReservationPreferredTable>, List<Map<String, dynamic>>>(preferredTables, (value) => pulumi.Input.encodeList<BiReservationPreferredTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'size': ?size,
      'updateTime': ?updateTime,
    };
  }

  factory BiReservationState.fromMap(Map<String, dynamic> map) {
    return BiReservationState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredTables: (() { final guardedValue = map['preferredTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BiReservationPreferredTable>(guardedValue, (value) => BiReservationPreferredTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
