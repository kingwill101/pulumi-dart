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
  ContactArgs({
    pulumi.Output<String>? contactName,
    required pulumi.Output<ContactsPropertiesContactProfile> contactProfile,
    required pulumi.Output<String> groundStationName,
    required pulumi.Output<String> reservationEndTime,
    required pulumi.Output<String> reservationStartTime,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spacecraftName,
  }) :
      contactName = pulumi.Input.asOptionalInput<String>(contactName),
      contactProfile = pulumi.Input.asInput<ContactsPropertiesContactProfile>(contactProfile),
      groundStationName = pulumi.Input.asInput<String>(groundStationName),
      reservationEndTime = pulumi.Input.asInput<String>(reservationEndTime),
      reservationStartTime = pulumi.Input.asInput<String>(reservationStartTime),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spacecraftName = pulumi.Input.asInput<String>(spacecraftName);

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
      contactName: map['contactName'] == null ? null : pulumi.Output.create<String>(map['contactName'] as String),
      contactProfile: pulumi.Output.create<ContactsPropertiesContactProfile>(ContactsPropertiesContactProfile.fromMap((map['contactProfile'] as Map).cast<String, dynamic>())),
      groundStationName: pulumi.Output.create<String>(map['groundStationName'] as String),
      reservationEndTime: pulumi.Output.create<String>(map['reservationEndTime'] as String),
      reservationStartTime: pulumi.Output.create<String>(map['reservationStartTime'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spacecraftName: pulumi.Output.create<String>(map['spacecraftName'] as String),
    );
  }
}

