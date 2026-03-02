// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scenario specific error details.
class TypedErrorInfoResponse {
  /// The scenario specific error details.
  final pulumi.Input<dynamic> info;
  /// The type of included error details.
  final pulumi.Input<String> type;

  /// Creates a new [TypedErrorInfoResponse].
  /// [info] The scenario specific error details.
  /// [type] The type of included error details.
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

