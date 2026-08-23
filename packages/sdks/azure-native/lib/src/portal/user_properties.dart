// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_profile.dart';
import 'terminal_settings.dart';

/// The cloud shell user settings properties.
class UserProperties {
  /// The preferred location of the cloud shell.
  final pulumi.Input<String> preferredLocation;
  /// The operating system type of the cloud shell. Deprecated, use preferredShellType.
  final pulumi.Input<String> preferredOsType;
  /// The shell type of the cloud shell.
  final pulumi.Input<String> preferredShellType;
  /// The storage profile of the user settings.
  final pulumi.Input<StorageProfile> storageProfile;
  /// Settings for terminal appearance.
  final pulumi.Input<TerminalSettings> terminalSettings;

  /// Creates a new [UserProperties].
  /// [preferredLocation] The preferred location of the cloud shell.
  /// [preferredOsType] The operating system type of the cloud shell. Deprecated, use preferredShellType.
  /// [preferredShellType] The shell type of the cloud shell.
  /// [storageProfile] The storage profile of the user settings.
  /// [terminalSettings] Settings for terminal appearance.
  const UserProperties({
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
      'storageProfile': pulumi.Input.mapInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'terminalSettings': pulumi.Input.mapInputValue<TerminalSettings, Map<String, dynamic>>(terminalSettings, (value) => value.toMap()),
    };
  }

  factory UserProperties.fromMap(Map<String, dynamic> map) {
    return UserProperties(
      preferredLocation: pulumi.Input.fromValue(map['preferredLocation'] as String),
      preferredOsType: pulumi.Input.fromValue(map['preferredOsType'] as String),
      preferredShellType: pulumi.Input.fromValue(map['preferredShellType'] as String),
      storageProfile: pulumi.Input.fromValue(StorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())),
      terminalSettings: pulumi.Input.fromValue(TerminalSettings.fromMap((map['terminalSettings']! as Map).cast<String, dynamic>())),
    );
  }
}
