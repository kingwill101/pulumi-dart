// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_domain_filter.dart';

/// {@template pulumi_index_get_email_security_domain_get_email_security_domain_args_doc}
/// Arguments for getEmailSecurityDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_domain_get_email_security_domain_args_doc}
class GetEmailSecurityDomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Domain identifier.
  final pulumi.Input<String?>? domainId;
  final pulumi.Input<GetEmailSecurityDomainFilter?>? filter;

  /// Creates a new [GetEmailSecurityDomainArgs].
  /// [accountId] Identifier.
  /// [domainId] Domain identifier.
  /// [filter] Optional.
  const GetEmailSecurityDomainArgs({
    required this.accountId,
    this.domainId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domainId': ?domainId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailSecurityDomainFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetEmailSecurityDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailSecurityDomainFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
