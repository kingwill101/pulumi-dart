// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_compute_beta.dart';
import 'log_config_cloud_audit_options_log_name_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsComputeBeta>? authorizationLoggingOptions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsLogNameComputeBeta>? logName;

  /// Creates a new [LogConfigCloudAuditOptionsComputeBeta].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  LogConfigCloudAuditOptionsComputeBeta({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsComputeBeta, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': ?pulumi.Input.mapOptionalInputValue<LogConfigCloudAuditOptionsLogNameComputeBeta, String>(logName, (value) => value.value),
    };
  }

  factory LogConfigCloudAuditOptionsComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsComputeBeta(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null ? null : (AuthorizationLoggingOptionsComputeBeta.fromMap((map['authorizationLoggingOptions'] as Map).cast<String, dynamic>())).input(),
      logName: map['logName'] == null ? null : (LogConfigCloudAuditOptionsLogNameComputeBeta.fromValue(map['logName'] as String)).input(),
    );
  }
}

