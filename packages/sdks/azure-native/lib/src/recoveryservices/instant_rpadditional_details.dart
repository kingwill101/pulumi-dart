// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstantRPAdditionalDetails {
  final pulumi.Input<String>? azureBackupRGNamePrefix;
  final pulumi.Input<String>? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetails].
  /// [azureBackupRGNamePrefix] Optional.
  /// [azureBackupRGNameSuffix] Optional.
  InstantRPAdditionalDetails({
    this.azureBackupRGNamePrefix,
    this.azureBackupRGNameSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBackupRGNamePrefix': ?azureBackupRGNamePrefix,
      'azureBackupRGNameSuffix': ?azureBackupRGNameSuffix,
    };
  }

  factory InstantRPAdditionalDetails.fromMap(Map<String, dynamic> map) {
    return InstantRPAdditionalDetails(
      azureBackupRGNamePrefix: map['azureBackupRGNamePrefix'] == null ? null : (map['azureBackupRGNamePrefix'] as String).input(),
      azureBackupRGNameSuffix: map['azureBackupRGNameSuffix'] == null ? null : (map['azureBackupRGNameSuffix'] as String).input(),
    );
  }
}

