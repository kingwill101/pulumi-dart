// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_response_gameservices_v1beta.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsResponseGameservicesV1beta {
  /// Information used by the Cloud Audit Logging pipeline.
  final pulumi.Input<AuthorizationLoggingOptionsResponseGameservicesV1beta> authorizationLoggingOptions;
  /// The log_name to populate in the Cloud Audit Record.
  final pulumi.Input<String> logName;

  /// Creates a new [CloudAuditOptionsResponseGameservicesV1beta].
  /// [authorizationLoggingOptions] Information used by the Cloud Audit Logging pipeline.
  /// [logName] The log_name to populate in the Cloud Audit Record.
  CloudAuditOptionsResponseGameservicesV1beta({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': pulumi.Input.mapInputValue<AuthorizationLoggingOptionsResponseGameservicesV1beta, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': logName,
    };
  }

  factory CloudAuditOptionsResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptionsResponseGameservicesV1beta(
      authorizationLoggingOptions: pulumi.Input.fromValue(AuthorizationLoggingOptionsResponseGameservicesV1beta.fromMap((map['authorizationLoggingOptions']! as Map).cast<String, dynamic>())),
      logName: pulumi.Input.fromValue(map['logName'] as String),
    );
  }
}

