// ignore_for_file: unused_element, unnecessary_cast


class GetImagesImageReplication {
  /// The region of an image replica.
  final String region;
  /// The status of an image replica.
  final String status;

  /// Creates a new [GetImagesImageReplication].
  /// [region] The region of an image replica.
  /// [status] The status of an image replica.
  GetImagesImageReplication({
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'status': status,
    };
  }

  factory GetImagesImageReplication.fromMap(Map<String, dynamic> map) {
    return GetImagesImageReplication(
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}

