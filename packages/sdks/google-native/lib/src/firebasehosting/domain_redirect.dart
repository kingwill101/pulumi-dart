// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_redirect_type.dart';

/// Defines the behavior of a domain-level redirect. Domain redirects preserve the path of the redirect but replace the requested domain with the one specified in the redirect configuration.
class DomainRedirect {
  /// The domain name to redirect to.
  final pulumi.Input<String> domainName;

  /// The redirect status code.
  final pulumi.Input<DomainRedirectType> type;

  /// Creates a new [DomainRedirect].
  /// [domainName] The domain name to redirect to.
  /// [type] The redirect status code.
  DomainRedirect({required this.domainName, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'type': pulumi.Input.mapInputValue<DomainRedirectType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory DomainRedirect.fromMap(Map<String, dynamic> map) {
    return DomainRedirect(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      type: pulumi.Input.fromValue(
        DomainRedirectType.fromValue(map['type']! as String),
      ),
    );
  }
}
