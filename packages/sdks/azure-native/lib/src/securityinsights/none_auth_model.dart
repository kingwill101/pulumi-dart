// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with no authentication method - public API.
class NoneAuthModel {
  /// Type of paging
  /// Expected value is 'None'.
  final pulumi.Input<String> type;

  /// Creates a new [NoneAuthModel].
  /// [type] Type of paging
  NoneAuthModel({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory NoneAuthModel.fromMap(Map<String, dynamic> map) {
    return NoneAuthModel(type: pulumi.Input.fromValue(map['type'] as String));
  }
}
