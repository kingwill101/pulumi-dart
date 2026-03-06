// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_properties_contact_profile.dart';

/// {@template pulumi_orbital_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_orbital_contact_args_doc}
class ContactArgs {
  /// Contact name.
  final pulumi.Input<String>? contactName;
  /// The reference to the contact profile resource.
  final pulumi.Input<ContactsPropertiesContactProfile> contactProfile;
  /// Azure Ground Station name.
  final pulumi.Input<String> groundStationName;
  /// Reservation end time of a contact (ISO 8601 UTC standard).
  final pulumi.Input<String> reservationEndTime;
  /// Reservation start time of a contact (ISO 8601 UTC standard).
  final pulumi.Input<String> reservationStartTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String> spacecraftName;

  /// Creates a new [ContactArgs].
  /// [contactName] Contact name.
  /// [contactProfile] The reference to the contact profile resource.
  /// [groundStationName] Azure Ground Station name.
  /// [reservationEndTime] Reservation end time of a contact (ISO 8601 UTC standard).
  /// [reservationStartTime] Reservation start time of a contact (ISO 8601 UTC standard).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  const ContactArgs({
    this.contactName,
    required this.contactProfile,
    required this.groundStationName,
    required this.reservationEndTime,
    required this.reservationStartTime,
    required this.resourceGroupName,
    required this.spacecraftName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': ?contactName,
      'contactProfile': pulumi.Input.mapInputValue<ContactsPropertiesContactProfile, Map<String, dynamic>>(contactProfile, (value) => value.toMap()),
      'groundStationName': groundStationName,
      'reservationEndTime': reservationEndTime,
      'reservationStartTime': reservationStartTime,
      'resourceGroupName': resourceGroupName,
      'spacecraftName': spacecraftName,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      contactName: (() { final guardedValue = map['contactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactProfile: pulumi.Input.fromValue(ContactsPropertiesContactProfile.fromMap((map['contactProfile']! as Map).cast<String, dynamic>())),
      groundStationName: pulumi.Input.fromValue(map['groundStationName'] as String),
      reservationEndTime: pulumi.Input.fromValue(map['reservationEndTime'] as String),
      reservationStartTime: pulumi.Input.fromValue(map['reservationStartTime'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      spacecraftName: pulumi.Input.fromValue(map['spacecraftName'] as String),
    );
  }
}

