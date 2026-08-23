// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with no authentication method - public API.
class NoneAuthModelResponse {
  /// Type of paging
  /// Expected value is 'None'.
  final pulumi.Input<String> type;

  /// Creates a new [NoneAuthModelResponse].
  /// [type] Type of paging
  const NoneAuthModelResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NoneAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return NoneAuthModelResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
