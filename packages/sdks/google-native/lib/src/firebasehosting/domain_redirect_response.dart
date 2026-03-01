// ignore_for_file: unused_element, unnecessary_cast


/// Defines the behavior of a domain-level redirect. Domain redirects preserve the path of the redirect but replace the requested domain with the one specified in the redirect configuration.
class DomainRedirectResponse {
  /// The domain name to redirect to.
  final String domainName;
  /// The redirect status code.
  final String type;

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
      domainName: map['domainName'] as String,
      type: map['type'] as String,
    );
  }
}

