// ignore_for_file: unused_element, unnecessary_cast


class GetImageReplication {
  /// The region of an image replica.
  final String region;
  /// The status of an image replica.
  final String status;

  /// Creates a new [GetImageReplication].
  /// [region] The region of an image replica.
  /// [status] The status of an image replica.
  GetImageReplication({
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
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}

