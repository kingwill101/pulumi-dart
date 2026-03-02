// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// APIServerProfile represents an API server profile.
class APIServerProfileResponse {
  /// The IP of the cluster API server.
  final pulumi.Input<String> ip;
  /// The URL to access the cluster API server.
  final pulumi.Input<String> url;
  /// API server visibility.
  final pulumi.Input<String>? visibility;

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
      ip: (map['ip'] as String).input(),
      url: (map['url'] as String).input(),
      visibility: map['visibility'] == null ? null : (map['visibility'] as String).input(),
    );
  }
}

