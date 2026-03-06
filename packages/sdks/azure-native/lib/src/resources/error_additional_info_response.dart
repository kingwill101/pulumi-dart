// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource management error additional info.
class ErrorAdditionalInfoResponse {
  /// The additional info.
  final pulumi.Input<dynamic> info;
  /// The additional info type.
  final pulumi.Input<String> type;

  /// Creates a new [ErrorAdditionalInfoResponse].
  /// [info] The additional info.
  /// [type] The additional info type.
  const ErrorAdditionalInfoResponse({
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info,
      'type': type,
    };
  }

  factory ErrorAdditionalInfoResponse.fromMap(Map<String, dynamic> map) {
    return ErrorAdditionalInfoResponse(
      info: pulumi.Input.fromValue(map['info']),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

