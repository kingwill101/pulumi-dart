// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error information.
class TypedErrorInfo {
  /// The type of the error.
  final pulumi.Input<String> type;

  /// Creates a new [TypedErrorInfo].
  /// [type] The type of the error.
  TypedErrorInfo({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory TypedErrorInfo.fromMap(Map<String, dynamic> map) {
    return TypedErrorInfo(
      type: (map['type'] as String).input(),
    );
  }
}

