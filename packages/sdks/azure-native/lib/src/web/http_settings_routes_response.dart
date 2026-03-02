// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the paths HTTP requests.
class HttpSettingsRoutesResponse {
  /// The prefix that should precede all the authentication/authorization paths.
  final pulumi.Input<String>? apiPrefix;

  /// Creates a new [HttpSettingsRoutesResponse].
  /// [apiPrefix] The prefix that should precede all the authentication/authorization paths.
  HttpSettingsRoutesResponse({
    this.apiPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPrefix': ?apiPrefix,
    };
  }

  factory HttpSettingsRoutesResponse.fromMap(Map<String, dynamic> map) {
    return HttpSettingsRoutesResponse(
      apiPrefix: map['apiPrefix'] == null ? null : (map['apiPrefix']! as String).input(),
    );
  }
}

