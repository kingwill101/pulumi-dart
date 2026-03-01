// ignore_for_file: unused_element, unnecessary_cast


/// APIServerProfile represents an API server profile.
class APIServerProfileResponse {
  /// The IP of the cluster API server.
  final String ip;
  /// The URL to access the cluster API server.
  final String url;
  /// API server visibility.
  final String? visibility;

  /// Creates a new [APIServerProfileResponse].
  /// [ip] The IP of the cluster API server.
  /// [url] The URL to access the cluster API server.
  /// [visibility] API server visibility.
  APIServerProfileResponse({
    required this.ip,
    required this.url,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'url': url,
      'visibility': ?visibility,
    };
  }

  factory APIServerProfileResponse.fromMap(Map<String, dynamic> map) {
    return APIServerProfileResponse(
      ip: map['ip'] as String,
      url: map['url'] as String,
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}

