// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_authentication_domain_get_authentication_domain_args_doc}
/// Arguments for getAuthenticationDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_authentication_domain_get_authentication_domain_args_doc}
class GetAuthenticationDomainArgs {
  /// The name of the authentication domain to be searched for. An error is thrown, if no authentication domain is found with the specified name.
  final pulumi.Input<String> name;

  /// Creates a new [GetAuthenticationDomainArgs].
  /// [name] The name of the authentication domain to be searched for. An error is thrown, if no authentication domain is found with the specified name.
  GetAuthenticationDomainArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetAuthenticationDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationDomainArgs(
      name: (map['name'] as String).input(),
    );
  }
}

