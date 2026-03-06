// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_response_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsResponseComputeV1> authorizationLoggingOptions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> logName;

  /// Creates a new [LogConfigCloudAuditOptionsResponseComputeV1].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  const LogConfigCloudAuditOptionsResponseComputeV1({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': pulumi.Input.mapInputValue<AuthorizationLoggingOptionsResponseComputeV1, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': logName,
    };
  }

  factory LogConfigCloudAuditOptionsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponseComputeV1(
      authorizationLoggingOptions: pulumi.Input.fromValue(AuthorizationLoggingOptionsResponseComputeV1.fromMap((map['authorizationLoggingOptions']! as Map).cast<String, dynamic>())),
      logName: pulumi.Input.fromValue(map['logName'] as String),
    );
  }
}

