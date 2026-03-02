// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error information.
class TypedErrorInfoResponse {
  /// The error information.
  final pulumi.Input<dynamic> info;
  /// The type of the error.
  final pulumi.Input<String> type;

  /// Creates a new [TypedErrorInfoResponse].
  /// [info] The error information.
  /// [type] The type of the error.
  TypedErrorInfoResponse({
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info,
      'type': type,
    };
  }

  factory TypedErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return TypedErrorInfoResponse(
      info: (map['info']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

