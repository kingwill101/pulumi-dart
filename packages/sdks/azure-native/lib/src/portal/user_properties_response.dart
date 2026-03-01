// ignore_for_file: unused_element, unnecessary_cast

import 'storage_profile_response.dart';
import 'terminal_settings_response.dart';

/// The cloud shell user settings properties.
class UserPropertiesResponse {
  /// The preferred location of the cloud shell.
  final String preferredLocation;
  /// The operating system type of the cloud shell. Deprecated, use preferredShellType.
  final String preferredOsType;
  /// The shell type of the cloud shell.
  final String preferredShellType;
  /// The storage profile of the user settings.
  final StorageProfileResponse storageProfile;
  /// Settings for terminal appearance.
  final TerminalSettingsResponse terminalSettings;

  /// Creates a new [UserPropertiesResponse].
  /// [preferredLocation] The preferred location of the cloud shell.
  /// [preferredOsType] The operating system type of the cloud shell. Deprecated, use preferredShellType.
  /// [preferredShellType] The shell type of the cloud shell.
  /// [storageProfile] The storage profile of the user settings.
  /// [terminalSettings] Settings for terminal appearance.
  UserPropertiesResponse({
    required this.preferredLocation,
    required this.preferredOsType,
    required this.preferredShellType,
    required this.storageProfile,
    required this.terminalSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredLocation': preferredLocation,
      'preferredOsType': preferredOsType,
      'preferredShellType': preferredShellType,
      'storageProfile': storageProfile.toMap(),
      'terminalSettings': terminalSettings.toMap(),
    };
  }

  factory UserPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserPropertiesResponse(
      preferredLocation: map['preferredLocation'] as String,
      preferredOsType: map['preferredOsType'] as String,
      preferredShellType: map['preferredShellType'] as String,
      storageProfile: StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      terminalSettings: TerminalSettingsResponse.fromMap((map['terminalSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

