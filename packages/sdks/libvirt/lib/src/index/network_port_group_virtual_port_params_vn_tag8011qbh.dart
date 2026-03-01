// ignore_for_file: unused_element, unnecessary_cast


class NetworkPortGroupVirtualPortParamsVnTag8011qbh {
  /// Specifies the profile ID for VNTag 8011QBH virtual port parameters.
  final String? profileId;

  /// Creates a new [NetworkPortGroupVirtualPortParamsVnTag8011qbh].
  /// [profileId] Specifies the profile ID for VNTag 8011QBH virtual port parameters.
  NetworkPortGroupVirtualPortParamsVnTag8011qbh({
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileId': ?profileId,
    };
  }

  factory NetworkPortGroupVirtualPortParamsVnTag8011qbh.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPortParamsVnTag8011qbh(
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
    );
  }
}

