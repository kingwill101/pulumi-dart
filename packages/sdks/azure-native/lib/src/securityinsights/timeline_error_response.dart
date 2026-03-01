// ignore_for_file: unused_element, unnecessary_cast


/// Timeline Query Errors.
class TimelineErrorResponse {
  /// the error message
  final String errorMessage;
  /// the query kind
  final String kind;
  /// the query id
  final String? queryId;

  /// Creates a new [TimelineErrorResponse].
  /// [errorMessage] the error message
  /// [kind] the query kind
  /// [queryId] the query id
  TimelineErrorResponse({
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
      errorMessage: map['errorMessage'] as String,
      kind: map['kind'] as String,
      queryId: map['queryId'] == null ? null : map['queryId'] as String,
    );
  }
}

