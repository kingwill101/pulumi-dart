// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response_gameservices_v1beta.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsResponseGameservicesV1beta {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptionsResponseGameservicesV1beta authorizationLoggingOptions;
  /// The log_name to populate in the Cloud Audit Record.
  final String logName;

  /// Creates a new [CloudAuditOptionsResponseGameservicesV1beta].
  /// [authorizationLoggingOptions] Information used by the Cloud Audit Logging pipeline.
  /// [logName] The log_name to populate in the Cloud Audit Record.
  CloudAuditOptionsResponseGameservicesV1beta({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': authorizationLoggingOptions.toMap(),
      'logName': logName,
    };
  }

  factory CloudAuditOptionsResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptionsResponseGameservicesV1beta(
      authorizationLoggingOptions: AuthorizationLoggingOptionsResponseGameservicesV1beta.fromMap((map['authorizationLoggingOptions'] as Map).cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}

