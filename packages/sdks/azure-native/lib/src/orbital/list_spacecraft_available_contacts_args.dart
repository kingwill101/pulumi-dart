// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_parameters_contact_profile.dart';

/// {@template pulumi_orbital_list_spacecraft_available_contacts_args_doc}
/// Arguments for listSpacecraftAvailableContacts.
/// {@endtemplate}
/// {@macro pulumi_orbital_list_spacecraft_available_contacts_args_doc}
class ListSpacecraftAvailableContactsArgs {
  /// The reference to the contact profile resource.
  final pulumi.Input<ContactParametersContactProfile> contactProfile;
  /// End time of a contact (ISO 8601 UTC standard).
  final pulumi.Input<String> endTime;
  /// Name of Azure Ground Station.
  final pulumi.Input<String> groundStationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String> spacecraftName;
  /// Start time of a contact (ISO 8601 UTC standard).
  final pulumi.Input<String> startTime;

  /// Creates a new [ListSpacecraftAvailableContactsArgs].
  /// [contactProfile] The reference to the contact profile resource.
  /// [endTime] End time of a contact (ISO 8601 UTC standard).
  /// [groundStationName] Name of Azure Ground Station.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  /// [startTime] Start time of a contact (ISO 8601 UTC standard).
  const ListSpacecraftAvailableContactsArgs({
    required this.contactProfile,
    required this.endTime,
    required this.groundStationName,
    required this.resourceGroupName,
    required this.spacecraftName,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactProfile': pulumi.Input.mapInputValue<ContactParametersContactProfile, Map<String, dynamic>>(contactProfile, (value) => value.toMap()),
      'endTime': endTime,
      'groundStationName': groundStationName,
      'resourceGroupName': resourceGroupName,
      'spacecraftName': spacecraftName,
      'startTime': startTime,
    };
  }

  factory ListSpacecraftAvailableContactsArgs.fromMap(Map<String, dynamic> map) {
    return ListSpacecraftAvailableContactsArgs(
      contactProfile: pulumi.Input.fromValue(ContactParametersContactProfile.fromMap((map['contactProfile']! as Map).cast<String, dynamic>())),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      groundStationName: pulumi.Input.fromValue(map['groundStationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      spacecraftName: pulumi.Input.fromValue(map['spacecraftName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
