// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences.dart';

/// {@template pulumi_migrationcenter_preference_set_preference_set_args_doc}
/// The set of arguments for PreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_preference_set_preference_set_args_doc}
class PreferenceSetArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of the preference set.
  final pulumi.Input<String>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;
  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  final pulumi.Input<String> preferenceSetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferences>? virtualMachinePreferences;

  /// Creates a new [PreferenceSetArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [preferenceSetId] Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  /// [project] The ID of the project in which the resource belongs.
  /// [virtualMachinePreferences] VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  const PreferenceSetArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.location,
    required this.preferenceSetId,
    this.project,
    this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'preferenceSetId': preferenceSetId,
      'project': ?project,
      'virtualMachinePreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferences, Map<String, dynamic>>(virtualMachinePreferences, (value) => value.toMap()),
    };
  }

  factory PreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return PreferenceSetArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      preferenceSetId: pulumi.Input.fromValue(map['preferenceSetId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachinePreferences: (() { final guardedValue = map['virtualMachinePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreferenceSetVirtualMachinePreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
