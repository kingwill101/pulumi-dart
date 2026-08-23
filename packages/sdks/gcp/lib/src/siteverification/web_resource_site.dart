// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebResourceSite {
  /// The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// set to INET_DOMAIN, the identifier is a domain name.
  final pulumi.Input<String> identifier;
  /// The type of resource to be verified.
  /// Possible values are: `INET_DOMAIN`, `SITE`.
  final pulumi.Input<String> type;

  /// Creates a new [WebResourceSite].
  /// [identifier] The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// [type] The type of resource to be verified.
  const WebResourceSite({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'type': type,
    };
  }

  factory WebResourceSite.fromMap(Map<String, dynamic> map) {
    return WebResourceSite(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
