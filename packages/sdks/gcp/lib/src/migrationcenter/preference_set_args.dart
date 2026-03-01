// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences.dart';

/// {@template pulumi_migrationcenter_preference_set_preference_set_args_doc}
/// The set of arguments for PreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_preference_set_preference_set_args_doc}
class PreferenceSetArgs {
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
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [preferenceSetId] Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  /// [project] The ID of the project in which the resource belongs.
  /// [virtualMachinePreferences] VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  PreferenceSetArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> location,
    required pulumi.Output<String> preferenceSetId,
    pulumi.Output<String>? project,
    pulumi.Output<PreferenceSetVirtualMachinePreferences>? virtualMachinePreferences,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      preferenceSetId = pulumi.Input.asInput<String>(preferenceSetId),
      project = pulumi.Input.asOptionalInput<String>(project),
      virtualMachinePreferences = pulumi.Input.asOptionalInput<PreferenceSetVirtualMachinePreferences>(virtualMachinePreferences);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      preferenceSetId: pulumi.Output.create<String>(map['preferenceSetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      virtualMachinePreferences: map['virtualMachinePreferences'] == null ? null : pulumi.Output.create<PreferenceSetVirtualMachinePreferences>(PreferenceSetVirtualMachinePreferences.fromMap((map['virtualMachinePreferences'] as Map).cast<String, dynamic>())),
    );
  }
}

