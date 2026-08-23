// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences.dart';

/// Input properties used for looking up and filtering PreferenceSet resources.
class PreferenceSetState {
  /// Output only. The timestamp when the preference set was created.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? location;
  /// Output only. Name of the preference set.
  final pulumi.Input<String>? name;
  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  final pulumi.Input<String>? preferenceSetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The timestamp when the preference set was last updated.
  final pulumi.Input<String>? updateTime;
  /// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferences>? virtualMachinePreferences;

  /// Creates a new [PreferenceSetState].
  /// [createTime] Output only. The timestamp when the preference set was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] Output only. Name of the preference set.
  /// [preferenceSetId] Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. The timestamp when the preference set was last updated.
  /// [virtualMachinePreferences] VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  const PreferenceSetState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.preferenceSetId,
    this.project,
    this.updateTime,
    this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'preferenceSetId': ?preferenceSetId,
      'project': ?project,
      'updateTime': ?updateTime,
      'virtualMachinePreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferences, Map<String, dynamic>>(virtualMachinePreferences, (value) => value.toMap()),
    };
  }

  factory PreferenceSetState.fromMap(Map<String, dynamic> map) {
    return PreferenceSetState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferenceSetId: (() { final guardedValue = map['preferenceSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachinePreferences: (() { final guardedValue = map['virtualMachinePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreferenceSetVirtualMachinePreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
