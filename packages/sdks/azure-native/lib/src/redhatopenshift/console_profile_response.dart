// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConsoleProfile represents a console profile.
class ConsoleProfileResponse {
  /// The URL to access the cluster console.
  final pulumi.Input<String> url;

  /// Creates a new [ConsoleProfileResponse].
  /// [url] The URL to access the cluster console.
  ConsoleProfileResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory ConsoleProfileResponse.fromMap(Map<String, dynamic> map) {
    return ConsoleProfileResponse(
      url: (map['url'] as String).input(),
    );
  }
}

