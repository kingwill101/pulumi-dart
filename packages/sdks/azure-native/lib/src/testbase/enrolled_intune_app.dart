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
  EnrolledIntuneApp({
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
      appId: (map['appId'] as String).input(),
      appName: (map['appName'] as String).input(),
      expectedInstallationPath: (map['expectedInstallationPath'] as String).input(),
    );
  }
}

