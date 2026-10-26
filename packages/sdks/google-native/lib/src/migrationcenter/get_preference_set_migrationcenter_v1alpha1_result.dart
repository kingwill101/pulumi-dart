// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_preferences_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getPreferenceSet.
class GetPreferenceSetMigrationcenterV1alpha1Result {
  /// The timestamp when the preference set was created.
  final String? createTime;
  /// A description of the preference set.
  final String? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final String? displayName;
  /// Name of the preference set.
  final String? name;
  /// The timestamp when the preference set was last updated.
  final String? updateTime;
  /// A set of preferences that applies to all virtual machines in the context.
  final VirtualMachinePreferencesResponseMigrationcenterV1alpha1? virtualMachinePreferences;

  /// Creates a new [GetPreferenceSetMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the preference set was created.
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [name] Name of the preference set.
  /// [updateTime] The timestamp when the preference set was last updated.
  /// [virtualMachinePreferences] A set of preferences that applies to all virtual machines in the context.
  const GetPreferenceSetMigrationcenterV1alpha1Result({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.updateTime,
    this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'updateTime': ?updateTime,
      'virtualMachinePreferences': ?virtualMachinePreferences?.toMap(),
    };
  }

  factory GetPreferenceSetMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetMigrationcenterV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachinePreferences: (() { final guardedValue = map['virtualMachinePreferences']; if (guardedValue == null) return null; return VirtualMachinePreferencesResponseMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
