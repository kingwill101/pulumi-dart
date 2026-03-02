// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_response.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsResponse {
  /// Information used by the Cloud Audit Logging pipeline.
  final pulumi.Input<AuthorizationLoggingOptionsResponse> authorizationLoggingOptions;
  /// The log_name to populate in the Cloud Audit Record.
  final pulumi.Input<String> logName;

  /// Creates a new [CloudAuditOptionsResponse].
  /// [authorizationLoggingOptions] Information used by the Cloud Audit Logging pipeline.
  /// [logName] The log_name to populate in the Cloud Audit Record.
  CloudAuditOptionsResponse({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': pulumi.Input.mapInputValue<AuthorizationLoggingOptionsResponse, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': logName,
    };
  }

  factory CloudAuditOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptionsResponse(
      authorizationLoggingOptions: (AuthorizationLoggingOptionsResponse.fromMap((map['authorizationLoggingOptions'] as Map).cast<String, dynamic>())).input(),
      logName: (map['logName'] as String).input(),
    );
  }
}

