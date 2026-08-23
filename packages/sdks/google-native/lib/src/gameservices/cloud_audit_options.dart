// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options.dart';
import 'cloud_audit_options_log_name.dart';

/// Write a Cloud Audit log
class CloudAuditOptions {
  /// Information used by the Cloud Audit Logging pipeline.
  final pulumi.Input<AuthorizationLoggingOptions>? authorizationLoggingOptions;
  /// The log_name to populate in the Cloud Audit Record.
  final pulumi.Input<CloudAuditOptionsLogName>? logName;

  /// Creates a new [CloudAuditOptions].
  /// [authorizationLoggingOptions] Information used by the Cloud Audit Logging pipeline.
  /// [logName] The log_name to populate in the Cloud Audit Record.
  const CloudAuditOptions({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptions, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': ?pulumi.Input.mapOptionalInputValue<CloudAuditOptionsLogName, String>(logName, (value) => value.wireValue),
    };
  }

  factory CloudAuditOptions.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptions(
      authorizationLoggingOptions: (() { final guardedValue = map['authorizationLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logName: (() { final guardedValue = map['logName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAuditOptionsLogName.fromValue(guardedValue as String)); })(),
    );
  }
}
