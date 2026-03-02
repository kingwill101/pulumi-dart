// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options.dart';
import 'log_config_cloud_audit_options_log_name.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptions {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptions>? authorizationLoggingOptions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsLogName>? logName;

  /// Creates a new [LogConfigCloudAuditOptions].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  LogConfigCloudAuditOptions({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptions, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': ?pulumi.Input.mapOptionalInputValue<LogConfigCloudAuditOptionsLogName, String>(logName, (value) => value.value),
    };
  }

  factory LogConfigCloudAuditOptions.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptions(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null ? null : (AuthorizationLoggingOptions.fromMap((map['authorizationLoggingOptions']! as Map).cast<String, dynamic>())).input(),
      logName: map['logName'] == null ? null : (LogConfigCloudAuditOptionsLogName.fromValue(map['logName']! as String)).input(),
    );
  }
}

