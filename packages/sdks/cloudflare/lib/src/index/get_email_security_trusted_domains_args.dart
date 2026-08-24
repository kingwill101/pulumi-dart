// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_trusted_domains_filter.dart';

/// {@template pulumi_index_get_email_security_trusted_domains_get_email_security_trusted_domains_args_doc}
/// Arguments for getEmailSecurityTrustedDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_trusted_domains_get_email_security_trusted_domains_args_doc}
class GetEmailSecurityTrustedDomainsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetEmailSecurityTrustedDomainsFilter?>? filter;
  /// Trusted domain identifier
  final pulumi.Input<String?>? trustedDomainId;

  /// Creates a new [GetEmailSecurityTrustedDomainsArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [trustedDomainId] Trusted domain identifier
  const GetEmailSecurityTrustedDomainsArgs({
    this.accountId,
    this.filter,
    this.trustedDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailSecurityTrustedDomainsFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'trustedDomainId': ?trustedDomainId,
    };
  }

  factory GetEmailSecurityTrustedDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityTrustedDomainsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailSecurityTrustedDomainsFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustedDomainId: (() { final guardedValue = map['trustedDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
