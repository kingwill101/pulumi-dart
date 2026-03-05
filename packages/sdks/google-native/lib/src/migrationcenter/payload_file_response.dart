// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Payload file for inline import job payload.
class PayloadFileResponse {
  /// The file data.
  final pulumi.Input<String> data;
  /// The file name.
  final pulumi.Input<String> name;

  /// Creates a new [PayloadFileResponse].
  /// [data] The file data.
  /// [name] The file name.
  PayloadFileResponse({
    required this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': name,
    };
  }

  factory PayloadFileResponse.fromMap(Map<String, dynamic> map) {
    return PayloadFileResponse(
      data: pulumi.Input.fromValue(map['data'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

