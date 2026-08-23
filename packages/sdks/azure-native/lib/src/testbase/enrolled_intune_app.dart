// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the enrolled Intune app.
class EnrolledIntuneApp {
  /// Intune app id.
  final pulumi.Input<String> appId;
  /// Intune app name.
  final pulumi.Input<String> appName;
  /// Intune app expected installation path.
  final pulumi.Input<String> expectedInstallationPath;

  /// Creates a new [EnrolledIntuneApp].
  /// [appId] Intune app id.
  /// [appName] Intune app name.
  /// [expectedInstallationPath] Intune app expected installation path.
  const EnrolledIntuneApp({
    required this.appId,
    required this.appName,
    required this.expectedInstallationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appName': appName,
      'expectedInstallationPath': expectedInstallationPath,
    };
  }

  factory EnrolledIntuneApp.fromMap(Map<String, dynamic> map) {
    return EnrolledIntuneApp(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      expectedInstallationPath: pulumi.Input.fromValue(map['expectedInstallationPath'] as String),
    );
  }
}
