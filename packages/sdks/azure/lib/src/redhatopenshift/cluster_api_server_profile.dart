// ignore_for_file: unused_element, unnecessary_cast


class ClusterApiServerProfile {
  /// The IP Address the Ingress Profile is associated with.
  final String? ipAddress;
  /// The URL the API Server Profile is associated with.
  final String? url;
  /// Cluster API server visibility. Supported values are `Public` and `Private`. Changing this forces a new resource to be created.
  final String visibility;

  /// Creates a new [ClusterApiServerProfile].
  /// [ipAddress] The IP Address the Ingress Profile is associated with.
  /// [url] The URL the API Server Profile is associated with.
  /// [visibility] Cluster API server visibility. Supported values are `Public` and `Private`. Changing this forces a new resource to be created.
  ClusterApiServerProfile({
    this.ipAddress,
    this.url,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'url': ?url,
      'visibility': visibility,
    };
  }

  factory ClusterApiServerProfile.fromMap(Map<String, dynamic> map) {
    return ClusterApiServerProfile(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      visibility: map['visibility'] as String,
    );
  }
}

