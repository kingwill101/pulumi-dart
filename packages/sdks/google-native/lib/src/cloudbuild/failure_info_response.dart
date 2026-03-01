// ignore_for_file: unused_element, unnecessary_cast


/// A fatal problem encountered during the execution of the build.
class FailureInfoResponse {
  /// Explains the failure issue in more detail using hard-coded text.
  final String detail;
  /// The name of the failure.
  final String type;

  /// Creates a new [FailureInfoResponse].
  /// [detail] Explains the failure issue in more detail using hard-coded text.
  /// [type] The name of the failure.
  FailureInfoResponse({
    required this.detail,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': detail,
      'type': type,
    };
  }

  factory FailureInfoResponse.fromMap(Map<String, dynamic> map) {
    return FailureInfoResponse(
      detail: map['detail'] as String,
      type: map['type'] as String,
    );
  }
}

