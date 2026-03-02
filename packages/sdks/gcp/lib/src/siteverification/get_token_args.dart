// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siteverification_get_token_get_token_args_doc}
/// Arguments for getToken.
/// {@endtemplate}
/// {@macro pulumi_siteverification_get_token_get_token_args_doc}
class GetTokenArgs {
  /// The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// set to INET_DOMAIN, the identifier is a domain name.
  final pulumi.Input<String> identifier;
  /// The type of resource to be verified, either a domain or a web site.
  /// Possible values are: `INET_DOMAIN`, `SITE`.
  final pulumi.Input<String> type;
  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  ///
  ///
  /// - - -
  final pulumi.Input<String> verificationMethod;

  /// Creates a new [GetTokenArgs].
  /// [identifier] The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// [type] The type of resource to be verified, either a domain or a web site.
  /// [verificationMethod] The verification method for the Site Verification system to use to verify
  GetTokenArgs({
    required this.identifier,
    required this.type,
    required this.verificationMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'type': type,
      'verificationMethod': verificationMethod,
    };
  }

  factory GetTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetTokenArgs(
      identifier: (map['identifier'] as String).input(),
      type: (map['type'] as String).input(),
      verificationMethod: (map['verificationMethod'] as String).input(),
    );
  }
}

