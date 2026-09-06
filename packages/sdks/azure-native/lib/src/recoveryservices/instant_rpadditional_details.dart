// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstantRPAdditionalDetails {
  final pulumi.Input<String?>? azureBackupRGNamePrefix;
  final pulumi.Input<String?>? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetails].
  /// [azureBackupRGNamePrefix] Optional.
  /// [azureBackupRGNameSuffix] Optional.
  const InstantRPAdditionalDetails({
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
      azureBackupRGNamePrefix: (() { final guardedValue = map['azureBackupRGNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureBackupRGNameSuffix: (() { final guardedValue = map['azureBackupRGNameSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
