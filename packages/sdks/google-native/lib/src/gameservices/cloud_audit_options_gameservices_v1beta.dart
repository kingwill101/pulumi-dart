// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_gameservices_v1beta.dart';
import 'cloud_audit_options_log_name_gameservices_v1beta.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsGameservicesV1beta {
  /// Information used by the Cloud Audit Logging pipeline.
  final pulumi.Input<AuthorizationLoggingOptionsGameservicesV1beta>? authorizationLoggingOptions;
  /// The log_name to populate in the Cloud Audit Record.
  final pulumi.Input<CloudAuditOptionsLogNameGameservicesV1beta>? logName;

  /// Creates a new [CloudAuditOptionsGameservicesV1beta].
  /// [authorizationLoggingOptions] Information used by the Cloud Audit Logging pipeline.
  /// [logName] The log_name to populate in the Cloud Audit Record.
  CloudAuditOptionsGameservicesV1beta({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsGameservicesV1beta, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': ?pulumi.Input.mapOptionalInputValue<CloudAuditOptionsLogNameGameservicesV1beta, String>(logName, (value) => value.value),
    };
  }

  factory CloudAuditOptionsGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptionsGameservicesV1beta(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null ? null : (AuthorizationLoggingOptionsGameservicesV1beta.fromMap((map['authorizationLoggingOptions'] as Map).cast<String, dynamic>())).input(),
      logName: map['logName'] == null ? null : (CloudAuditOptionsLogNameGameservicesV1beta.fromValue(map['logName'] as String)).input(),
    );
  }
}

