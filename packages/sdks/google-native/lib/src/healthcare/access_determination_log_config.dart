// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_determination_log_config_log_level.dart';

/// Configures consent audit log config for FHIR create, read, update, and delete (CRUD) operations. Cloud audit log for healthcare API must be [enabled](https://cloud.google.com/logging/docs/audit/configure-data-access#config-console-enable). The consent-related logs are included as part of `protoPayload.metadata`.
class AccessDeterminationLogConfig {
  /// Optional. Controls the amount of detail to include as part of the audit logs.
  final pulumi.Input<AccessDeterminationLogConfigLogLevel>? logLevel;

  /// Creates a new [AccessDeterminationLogConfig].
  /// [logLevel] Optional. Controls the amount of detail to include as part of the audit logs.
  AccessDeterminationLogConfig({
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logLevel': ?pulumi.Input.mapOptionalInputValue<AccessDeterminationLogConfigLogLevel, String>(logLevel, (value) => value.wireValue),
    };
  }

  factory AccessDeterminationLogConfig.fromMap(Map<String, dynamic> map) {
    return AccessDeterminationLogConfig(
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessDeterminationLogConfigLogLevel.fromValue(guardedValue as String)); })(),
    );
  }
}

