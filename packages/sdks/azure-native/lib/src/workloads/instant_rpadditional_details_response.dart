// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instant recovery point additional details.
class InstantRPAdditionalDetailsResponse {
  /// Azure backup resource group name prefix.
  final pulumi.Input<String>? azureBackupRGNamePrefix;

  /// Azure backup resource group name suffix.
  final pulumi.Input<String>? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetailsResponse].
  /// [azureBackupRGNamePrefix] Azure backup resource group name prefix.
  /// [azureBackupRGNameSuffix] Azure backup resource group name suffix.
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
      azureBackupRGNamePrefix: (() {
        final guardedValue = map['azureBackupRGNamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureBackupRGNameSuffix: (() {
        final guardedValue = map['azureBackupRGNameSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
