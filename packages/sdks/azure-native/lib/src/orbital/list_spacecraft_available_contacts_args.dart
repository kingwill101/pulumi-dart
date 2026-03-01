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
  ListSpacecraftAvailableContactsArgs({
    required pulumi.Output<ContactParametersContactProfile> contactProfile,
    required pulumi.Output<String> endTime,
    required pulumi.Output<String> groundStationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spacecraftName,
    required pulumi.Output<String> startTime,
  }) :
      contactProfile = pulumi.Input.asInput<ContactParametersContactProfile>(contactProfile),
      endTime = pulumi.Input.asInput<String>(endTime),
      groundStationName = pulumi.Input.asInput<String>(groundStationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spacecraftName = pulumi.Input.asInput<String>(spacecraftName),
      startTime = pulumi.Input.asInput<String>(startTime);

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
      contactProfile: pulumi.Output.create<ContactParametersContactProfile>(ContactParametersContactProfile.fromMap((map['contactProfile'] as Map).cast<String, dynamic>())),
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      groundStationName: pulumi.Output.create<String>(map['groundStationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spacecraftName: pulumi.Output.create<String>(map['spacecraftName'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

