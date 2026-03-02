// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstantRPAdditionalDetailsResponse {
  final pulumi.Input<String>? azureBackupRGNamePrefix;
  final pulumi.Input<String>? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetailsResponse].
  /// [azureBackupRGNamePrefix] Optional.
  /// [azureBackupRGNameSuffix] Optional.
  InstantRPAdditionalDetailsResponse({
    this.azureBackupRGNamePrefix,
    this.azureBackupRGNameSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBackupRGNamePrefix': ?azureBackupRGNamePrefix,
      'azureBackupRGNameSuffix': ?azureBackupRGNameSuffix,
    };
  }

  factory InstantRPAdditionalDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InstantRPAdditionalDetailsResponse(
      azureBackupRGNamePrefix: map['azureBackupRGNamePrefix'] == null ? null : (map['azureBackupRGNamePrefix']! as String).input(),
      azureBackupRGNameSuffix: map['azureBackupRGNameSuffix'] == null ? null : (map['azureBackupRGNameSuffix']! as String).input(),
    );
  }
}

