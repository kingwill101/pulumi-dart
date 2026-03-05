// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the behavior of a domain-level redirect. Domain redirects preserve the path of the redirect but replace the requested domain with the one specified in the redirect configuration.
class DomainRedirectResponse {
  /// The domain name to redirect to.
  final pulumi.Input<String> domainName;
  /// The redirect status code.
  final pulumi.Input<String> type;

  /// Creates a new [DomainRedirectResponse].
  /// [domainName] The domain name to redirect to.
  /// [type] The redirect status code.
  DomainRedirectResponse({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'type': type,
    };
  }

  factory DomainRedirectResponse.fromMap(Map<String, dynamic> map) {
    return DomainRedirectResponse(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

