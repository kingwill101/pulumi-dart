// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Contact resources.
class ContactState {
  /// ID of the orbital contact profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? contactProfileId;
  /// Name of the Azure ground station. Changing this forces a new resource to be created.
  final pulumi.Input<String>? groundStationName;
  /// The name of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Reservation end time of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? reservationEndTime;
  /// Reservation start time of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? reservationStartTime;
  /// The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? spacecraftId;

  /// Creates a new [ContactState].
  /// [contactProfileId] ID of the orbital contact profile. Changing this forces a new resource to be created.
  /// [groundStationName] Name of the Azure ground station. Changing this forces a new resource to be created.
  /// [name] The name of the Contact. Changing this forces a new resource to be created.
  /// [reservationEndTime] Reservation end time of the Contact. Changing this forces a new resource to be created.
  /// [reservationStartTime] Reservation start time of the Contact. Changing this forces a new resource to be created.
  /// [spacecraftId] The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  const ContactState({
    this.contactProfileId,
    this.groundStationName,
    this.name,
    this.reservationEndTime,
    this.reservationStartTime,
    this.spacecraftId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactProfileId': ?contactProfileId,
      'groundStationName': ?groundStationName,
      'name': ?name,
      'reservationEndTime': ?reservationEndTime,
      'reservationStartTime': ?reservationStartTime,
      'spacecraftId': ?spacecraftId,
    };
  }

  factory ContactState.fromMap(Map<String, dynamic> map) {
    return ContactState(
      contactProfileId: (() { final guardedValue = map['contactProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groundStationName: (() { final guardedValue = map['groundStationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationEndTime: (() { final guardedValue = map['reservationEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationStartTime: (() { final guardedValue = map['reservationStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spacecraftId: (() { final guardedValue = map['spacecraftId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
