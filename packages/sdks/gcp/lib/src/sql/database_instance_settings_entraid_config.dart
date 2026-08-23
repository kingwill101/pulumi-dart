// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsEntraidConfig {
  /// The application ID for the Entra ID configuration. This must be paired with a tenantId to be valid.
  final pulumi.Input<String>? applicationId;
  /// The tenant ID for the Entra ID configuration. This must be paired with an applicationId to be valid.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DatabaseInstanceSettingsEntraidConfig].
  /// [applicationId] The application ID for the Entra ID configuration. This must be paired with a tenantId to be valid.
  /// [tenantId] The tenant ID for the Entra ID configuration. This must be paired with an applicationId to be valid.
  const DatabaseInstanceSettingsEntraidConfig({
    this.applicationId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'tenantId': ?tenantId,
    };
  }

  factory DatabaseInstanceSettingsEntraidConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsEntraidConfig(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
