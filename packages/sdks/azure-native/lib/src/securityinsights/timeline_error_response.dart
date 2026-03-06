// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Timeline Query Errors.
class TimelineErrorResponse {
  /// the error message
  final pulumi.Input<String> errorMessage;
  /// the query kind
  final pulumi.Input<String> kind;
  /// the query id
  final pulumi.Input<String>? queryId;

  /// Creates a new [TimelineErrorResponse].
  /// [errorMessage] the error message
  /// [kind] the query kind
  /// [queryId] the query id
  const TimelineErrorResponse({
    required this.errorMessage,
    required this.kind,
    this.queryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'kind': kind,
      'queryId': ?queryId,
    };
  }

  factory TimelineErrorResponse.fromMap(Map<String, dynamic> map) {
    return TimelineErrorResponse(
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      queryId: (() { final guardedValue = map['queryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

