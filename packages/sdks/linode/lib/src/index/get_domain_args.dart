// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_domain_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_domain_get_domain_args_doc}
class GetDomainArgs {
  /// The unique domain name of the Domain record to query.
  final pulumi.Input<String>? domain;
  /// The unique numeric ID of the Domain record to query.
  final pulumi.Input<int>? id;

  /// Creates a new [GetDomainArgs].
  /// [domain] The unique domain name of the Domain record to query.
  /// [id] The unique numeric ID of the Domain record to query.
  GetDomainArgs({
    this.domain,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'id': ?id,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as int).input(),
    );
  }
}

