// ignore_for_file: unused_element, unnecessary_cast


class WorkstationClusterCondition {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;
  /// (Output)
  /// A list of messages that carry the error details.
  final List<Map<String, String>>? details;
  /// (Output)
  /// Human readable message indicating details about the current status.
  final String? message;

  /// Creates a new [WorkstationClusterCondition].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  WorkstationClusterCondition({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details,
      'message': ?message,
    };
  }

  factory WorkstationClusterCondition.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterCondition(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null ? null : (map['details'] as List).cast<Map<String, String>>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

