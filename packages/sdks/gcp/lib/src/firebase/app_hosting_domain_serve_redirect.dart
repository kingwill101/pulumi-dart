// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingDomainServeRedirect {
  /// The status code to use in a redirect response. Must be a valid HTTP 3XX
  /// status code. Defaults to 302 if not present.
  final pulumi.Input<String>? status;
  /// The URI of the redirect's intended destination. This URI will be
  /// prepended to the original request path. URI without a scheme are
  /// assumed to be HTTPS.
  final pulumi.Input<String> uri;

  /// Creates a new [AppHostingDomainServeRedirect].
  /// [status] The status code to use in a redirect response. Must be a valid HTTP 3XX
  /// [uri] The URI of the redirect's intended destination. This URI will be
  AppHostingDomainServeRedirect({
    this.status,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'uri': uri,
    };
  }

  factory AppHostingDomainServeRedirect.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainServeRedirect(
      status: map['status'] == null ? null : (map['status']! as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

