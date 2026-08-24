// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_zone_transfers_acl_get_dns_zone_transfers_acl_args_doc}
/// Arguments for getDnsZoneTransfersAcl.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_zone_transfers_acl_get_dns_zone_transfers_acl_args_doc}
class GetDnsZoneTransfersAclArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> aclId;

  /// Creates a new [GetDnsZoneTransfersAclArgs].
  /// [accountId] Optional.
  /// [aclId] Required.
  const GetDnsZoneTransfersAclArgs({
    this.accountId,
    required this.aclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aclId': aclId,
    };
  }

  factory GetDnsZoneTransfersAclArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersAclArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
    );
  }
}
