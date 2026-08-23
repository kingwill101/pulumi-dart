// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_compute_v1.dart';
import 'log_config_cloud_audit_options_log_name_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsComputeV1>? authorizationLoggingOptions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsLogNameComputeV1>? logName;

  /// Creates a new [LogConfigCloudAuditOptionsComputeV1].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  const LogConfigCloudAuditOptionsComputeV1({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsComputeV1, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': ?pulumi.Input.mapOptionalInputValue<LogConfigCloudAuditOptionsLogNameComputeV1, String>(logName, (value) => value.wireValue),
    };
  }

  factory LogConfigCloudAuditOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsComputeV1(
      authorizationLoggingOptions: (() { final guardedValue = map['authorizationLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationLoggingOptionsComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logName: (() { final guardedValue = map['logName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogConfigCloudAuditOptionsLogNameComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}
