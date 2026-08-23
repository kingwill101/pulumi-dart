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
  const APIServerProfileResponse({
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
      ip: pulumi.Input.fromValue(map['ip'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
