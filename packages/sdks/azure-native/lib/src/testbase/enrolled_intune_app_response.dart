// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the enrolled Intune app.
class EnrolledIntuneAppResponse {
  /// Intune app id.
  final pulumi.Input<String> appId;
  /// Intune app name.
  final pulumi.Input<String> appName;
  /// Intune app expected installation path.
  final pulumi.Input<String> expectedInstallationPath;

  /// Creates a new [EnrolledIntuneAppResponse].
  /// [appId] Intune app id.
  /// [appName] Intune app name.
  /// [expectedInstallationPath] Intune app expected installation path.
  EnrolledIntuneAppResponse({
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

  factory EnrolledIntuneAppResponse.fromMap(Map<String, dynamic> map) {
    return EnrolledIntuneAppResponse(
      appId: (map['appId'] as String).input(),
      appName: (map['appName'] as String).input(),
      expectedInstallationPath: (map['expectedInstallationPath'] as String).input(),
    );
  }
}

