// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpPortalsResultServerErrorDetails {
  /// Underlying error message
  final pulumi.Input<String> cause;
  /// True = MCP server returned an error. False = couldn't reach the server
  final pulumi.Input<bool> isUpstream;
  /// MCP protocol error code
  final pulumi.Input<double> mcpCode;
  /// Whether the error is transient and worth retrying
  final pulumi.Input<bool> retryable;
  /// HTTP status code from the server
  final pulumi.Input<double> statusCode;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalsResultServerErrorDetails].
  /// [cause] Underlying error message
  /// [isUpstream] True = MCP server returned an error. False = couldn't reach the server
  /// [mcpCode] MCP protocol error code
  /// [retryable] Whether the error is transient and worth retrying
  /// [statusCode] HTTP status code from the server
  const GetZeroTrustAccessAiControlsMcpPortalsResultServerErrorDetails({
    required this.cause,
    required this.isUpstream,
    required this.mcpCode,
    required this.retryable,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': cause,
      'isUpstream': isUpstream,
      'mcpCode': mcpCode,
      'retryable': retryable,
      'statusCode': statusCode,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalsResultServerErrorDetails.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalsResultServerErrorDetails(
      cause: pulumi.Input.fromValue(map['cause'] as String),
      isUpstream: pulumi.Input.fromValue(map['isUpstream'] as bool),
      mcpCode: pulumi.Input.fromValue((map['mcpCode'] as num).toDouble()),
      retryable: pulumi.Input.fromValue(map['retryable'] as bool),
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toDouble()),
    );
  }
}
