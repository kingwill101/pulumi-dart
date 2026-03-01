// ignore_for_file: unused_element, unnecessary_cast

import 'storage_profile.dart';
import 'terminal_settings.dart';

/// The cloud shell user settings properties.
class UserProperties {
  /// The preferred location of the cloud shell.
  final String preferredLocation;
  /// The operating system type of the cloud shell. Deprecated, use preferredShellType.
  final String preferredOsType;
  /// The shell type of the cloud shell.
  final String preferredShellType;
  /// The storage profile of the user settings.
  final StorageProfile storageProfile;
  /// Settings for terminal appearance.
  final TerminalSettings terminalSettings;

  /// Creates a new [UserProperties].
  /// [preferredLocation] The preferred location of the cloud shell.
  /// [preferredOsType] The operating system type of the cloud shell. Deprecated, use preferredShellType.
  /// [preferredShellType] The shell type of the cloud shell.
  /// [storageProfile] The storage profile of the user settings.
  /// [terminalSettings] Settings for terminal appearance.
  UserProperties({
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

  factory UserProperties.fromMap(Map<String, dynamic> map) {
    return UserProperties(
      preferredLocation: map['preferredLocation'] as String,
      preferredOsType: map['preferredOsType'] as String,
      preferredShellType: map['preferredShellType'] as String,
      storageProfile: StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      terminalSettings: TerminalSettings.fromMap((map['terminalSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

