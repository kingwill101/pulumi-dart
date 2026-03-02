// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_contact_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_orbital_contact_contact_args_doc}
class ContactArgs {
  /// ID of the orbital contact profile. Changing this forces a new resource to be created.
  final pulumi.Input<String> contactProfileId;
  /// Name of the Azure ground station. Changing this forces a new resource to be created.
  final pulumi.Input<String> groundStationName;
  /// The name of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Reservation end time of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String> reservationEndTime;
  /// Reservation start time of the Contact. Changing this forces a new resource to be created.
  final pulumi.Input<String> reservationStartTime;
  /// The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  final pulumi.Input<String> spacecraftId;

  /// Creates a new [ContactArgs].
  /// [contactProfileId] ID of the orbital contact profile. Changing this forces a new resource to be created.
  /// [groundStationName] Name of the Azure ground station. Changing this forces a new resource to be created.
  /// [name] The name of the Contact. Changing this forces a new resource to be created.
  /// [reservationEndTime] Reservation end time of the Contact. Changing this forces a new resource to be created.
  /// [reservationStartTime] Reservation start time of the Contact. Changing this forces a new resource to be created.
  /// [spacecraftId] The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  ContactArgs({
    required this.contactProfileId,
    required this.groundStationName,
    this.name,
    required this.reservationEndTime,
    required this.reservationStartTime,
    required this.spacecraftId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactProfileId': contactProfileId,
      'groundStationName': groundStationName,
      'name': ?name,
      'reservationEndTime': reservationEndTime,
      'reservationStartTime': reservationStartTime,
      'spacecraftId': spacecraftId,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      contactProfileId: (map['contactProfileId'] as String).input(),
      groundStationName: (map['groundStationName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      reservationEndTime: (map['reservationEndTime'] as String).input(),
      reservationStartTime: (map['reservationStartTime'] as String).input(),
      spacecraftId: (map['spacecraftId'] as String).input(),
    );
  }
}

