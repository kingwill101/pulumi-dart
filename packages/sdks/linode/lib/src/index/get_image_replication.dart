// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageReplication {
  /// The region of an image replica.
  final pulumi.Input<String> region;
  /// The status of an image replica.
  final pulumi.Input<String> status;

  /// Creates a new [GetImageReplication].
  /// [region] The region of an image replica.
  /// [status] The status of an image replica.
  const GetImageReplication({
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'status': status,
    };
  }

  factory GetImageReplication.fromMap(Map<String, dynamic> map) {
    return GetImageReplication(
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

