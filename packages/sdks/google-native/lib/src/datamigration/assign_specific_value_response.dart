// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set to a specific value (value is converted to fit the target data type)
class AssignSpecificValueResponse {
  /// Specific value to be assigned
  final pulumi.Input<String> value;

  /// Creates a new [AssignSpecificValueResponse].
  /// [value] Specific value to be assigned
  const AssignSpecificValueResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory AssignSpecificValueResponse.fromMap(Map<String, dynamic> map) {
    return AssignSpecificValueResponse(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
