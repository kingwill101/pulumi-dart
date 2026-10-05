// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_preferences_response.dart';

/// Result data returned by getPreferenceSet.
class GetPreferenceSetResult {
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
  final VirtualMachinePreferencesResponse? virtualMachinePreferences;

  /// Creates a new [GetPreferenceSetResult].
  /// [createTime] The timestamp when the preference set was created.
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [name] Name of the preference set.
  /// [updateTime] The timestamp when the preference set was last updated.
  /// [virtualMachinePreferences] A set of preferences that applies to all virtual machines in the context.
  const GetPreferenceSetResult({
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

  factory GetPreferenceSetResult.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachinePreferences: (() { final guardedValue = map['virtualMachinePreferences']; if (guardedValue == null) return null; return VirtualMachinePreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
