// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Apply a hash function on the value.
class ApplyHashResponse {
  /// Optional. Generate UUID from the data's byte array
  final pulumi.Input<Map<String, dynamic>> uuidFromBytes;

  /// Creates a new [ApplyHashResponse].
  /// [uuidFromBytes] Optional. Generate UUID from the data's byte array
  const ApplyHashResponse({
    required this.uuidFromBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuidFromBytes': uuidFromBytes,
    };
  }

  factory ApplyHashResponse.fromMap(Map<String, dynamic> map) {
    return ApplyHashResponse(
      uuidFromBytes: pulumi.Input.fromValue((map['uuidFromBytes']! as Map).cast<String, dynamic>()),
    );
  }
}
