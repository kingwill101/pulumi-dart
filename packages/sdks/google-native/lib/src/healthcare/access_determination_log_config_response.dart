// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configures consent audit log config for FHIR create, read, update, and delete (CRUD) operations. Cloud audit log for healthcare API must be [enabled](https://cloud.google.com/logging/docs/audit/configure-data-access#config-console-enable). The consent-related logs are included as part of `protoPayload.metadata`.
class AccessDeterminationLogConfigResponse {
  /// Optional. Controls the amount of detail to include as part of the audit logs.
  final pulumi.Input<String> logLevel;

  /// Creates a new [AccessDeterminationLogConfigResponse].
  /// [logLevel] Optional. Controls the amount of detail to include as part of the audit logs.
  AccessDeterminationLogConfigResponse({
    required this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logLevel': logLevel,
    };
  }

  factory AccessDeterminationLogConfigResponse.fromMap(Map<String, dynamic> map) {
    return AccessDeterminationLogConfigResponse(
      logLevel: pulumi.Input.fromValue(map['logLevel'] as String),
    );
  }
}

