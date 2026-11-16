// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_domain_acl_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_domain_acl_get_zero_trust_cws_domain_acl_args_doc}
/// Arguments for getZeroTrustCwsDomainAcl.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_domain_acl_get_zero_trust_cws_domain_acl_args_doc}
class GetZeroTrustCwsDomainAclArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// ID of the domain ACL to retrieve
  final pulumi.Input<String?>? domainAclId;
  final pulumi.Input<GetZeroTrustCwsDomainAclFilter?>? filter;

  /// Creates a new [GetZeroTrustCwsDomainAclArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [domainAclId] ID of the domain ACL to retrieve
  /// [filter] Optional.
  const GetZeroTrustCwsDomainAclArgs({
    required this.accountId,
    this.domainAclId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domainAclId': ?domainAclId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsDomainAclFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustCwsDomainAclArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDomainAclArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domainAclId: (() { final guardedValue = map['domainAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsDomainAclFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
