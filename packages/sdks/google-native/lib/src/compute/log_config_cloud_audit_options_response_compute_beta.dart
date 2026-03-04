// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsResponseComputeBeta>
  authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> logName;

  /// Creates a new [LogConfigCloudAuditOptionsResponseComputeBeta].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  LogConfigCloudAuditOptionsResponseComputeBeta({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions':
          pulumi.Input.mapInputValue<
            AuthorizationLoggingOptionsResponseComputeBeta,
            Map<String, dynamic>
          >(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': logName,
    };
  }

  factory LogConfigCloudAuditOptionsResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogConfigCloudAuditOptionsResponseComputeBeta(
      authorizationLoggingOptions: pulumi.Input.fromValue(
        AuthorizationLoggingOptionsResponseComputeBeta.fromMap(
          (map['authorizationLoggingOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      logName: pulumi.Input.fromValue(map['logName'] as String),
    );
  }
}
