// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaMcpDataSourceRequestHeader {
  /// A value the agent fills in for each request.
  /// Possible values:
  /// USER_ID
  final pulumi.Input<String?>? dynamicValue;
  /// The header name. Must be a valid HTTP field name (RFC 9110 token),
  /// unique ignoring case within the data source, and not a header managed
  /// by the agent (such as 'Authorization', 'Content-Type', 'mcp-session-id',
  /// or the configured API key, session ID, or task ID headers).
  final pulumi.Input<String> headerName;
  /// A static value, sent as-is on every request. The value is stored and
  /// returned in plain text, so do not use it for credentials.
  final pulumi.Input<String?>? value;

  /// Creates a new [AnalystAgentPersonaMcpDataSourceRequestHeader].
  /// [dynamicValue] A value the agent fills in for each request.
  /// [headerName] The header name. Must be a valid HTTP field name (RFC 9110 token),
  /// [value] A static value, sent as-is on every request. The value is stored and
  const AnalystAgentPersonaMcpDataSourceRequestHeader({
    this.dynamicValue,
    required this.headerName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicValue': ?dynamicValue,
      'headerName': headerName,
      'value': ?value,
    };
  }

  factory AnalystAgentPersonaMcpDataSourceRequestHeader.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaMcpDataSourceRequestHeader(
      dynamicValue: (() { final guardedValue = map['dynamicValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
