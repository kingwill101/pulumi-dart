// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_response.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsResponse> authorizationLoggingOptions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> logName;

  /// Creates a new [LogConfigCloudAuditOptionsResponse].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  const LogConfigCloudAuditOptionsResponse({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': pulumi.Input.mapInputValue<AuthorizationLoggingOptionsResponse, Map<String, dynamic>>(authorizationLoggingOptions, (value) => value.toMap()),
      'logName': logName,
    };
  }

  factory LogConfigCloudAuditOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponse(
      authorizationLoggingOptions: pulumi.Input.fromValue(AuthorizationLoggingOptionsResponse.fromMap((map['authorizationLoggingOptions']! as Map).cast<String, dynamic>())),
      logName: pulumi.Input.fromValue(map['logName'] as String),
    );
  }
}

