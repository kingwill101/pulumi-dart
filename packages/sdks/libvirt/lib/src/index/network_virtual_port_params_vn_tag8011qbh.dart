// ignore_for_file: unused_element, unnecessary_cast


class NetworkVirtualPortParamsVnTag8011qbh {
  /// Specifies the profile ID for VNTag 8011QBH virtual port parameters.
  final String? profileId;

  /// Creates a new [NetworkVirtualPortParamsVnTag8011qbh].
  /// [profileId] Specifies the profile ID for VNTag 8011QBH virtual port parameters.
  NetworkVirtualPortParamsVnTag8011qbh({
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileId': ?profileId,
    };
  }

  factory NetworkVirtualPortParamsVnTag8011qbh.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsVnTag8011qbh(
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
    );
  }
}

