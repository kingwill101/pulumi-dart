// ignore_for_file: unused_element, unnecessary_cast


class ImageReplication {
  /// The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  final String region;
  /// The status of an image replica.
  final String status;

  /// Creates a new [ImageReplication].
  /// [region] The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  /// [status] The status of an image replica.
  ImageReplication({
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'status': status,
    };
  }

  factory ImageReplication.fromMap(Map<String, dynamic> map) {
    return ImageReplication(
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}

