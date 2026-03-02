// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A fatal problem encountered during the execution of the build.
class FailureInfoResponse {
  /// Explains the failure issue in more detail using hard-coded text.
  final pulumi.Input<String> detail;
  /// The name of the failure.
  final pulumi.Input<String> type;

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
      detail: (map['detail'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

