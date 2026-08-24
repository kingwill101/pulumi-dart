// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessAiControlsMcpServerErrorDetails {
  /// Underlying error message
  final pulumi.Input<String?>? cause;
  /// True = MCP server returned an error. False = couldn't reach the server
  final pulumi.Input<bool?>? isUpstream;
  /// MCP protocol error code
  final pulumi.Input<double?>? mcpCode;
  /// Whether the error is transient and worth retrying
  final pulumi.Input<bool?>? retryable;
  /// HTTP status code from the server
  final pulumi.Input<double?>? statusCode;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerErrorDetails].
  /// [cause] Underlying error message
  /// [isUpstream] True = MCP server returned an error. False = couldn't reach the server
  /// [mcpCode] MCP protocol error code
  /// [retryable] Whether the error is transient and worth retrying
  /// [statusCode] HTTP status code from the server
  const ZeroTrustAccessAiControlsMcpServerErrorDetails({
    this.cause,
    this.isUpstream,
    this.mcpCode,
    this.retryable,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': ?cause,
      'isUpstream': ?isUpstream,
      'mcpCode': ?mcpCode,
      'retryable': ?retryable,
      'statusCode': ?statusCode,
    };
  }

  factory ZeroTrustAccessAiControlsMcpServerErrorDetails.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerErrorDetails(
      cause: (() { final guardedValue = map['cause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isUpstream: (() { final guardedValue = map['isUpstream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mcpCode: (() { final guardedValue = map['mcpCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      retryable: (() { final guardedValue = map['retryable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
