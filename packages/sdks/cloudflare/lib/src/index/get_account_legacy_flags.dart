// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_legacy_flags_enterprise_zone_quota.dart';

class GetAccountLegacyFlags {
  /// Enterprise zone quota for standard and enterprise accounts. Accounts without a quota have a maximum of 0.
  final pulumi.Input<GetAccountLegacyFlagsEnterpriseZoneQuota> enterpriseZoneQuota;

  /// Creates a new [GetAccountLegacyFlags].
  /// [enterpriseZoneQuota] Enterprise zone quota for standard and enterprise accounts. Accounts without a quota have a maximum of 0.
  const GetAccountLegacyFlags({
    required this.enterpriseZoneQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseZoneQuota': pulumi.Input.mapInputValue<GetAccountLegacyFlagsEnterpriseZoneQuota, Map<String, dynamic>>(enterpriseZoneQuota, (value) => value.toMap()),
    };
  }

  factory GetAccountLegacyFlags.fromMap(Map<String, dynamic> map) {
    return GetAccountLegacyFlags(
      enterpriseZoneQuota: pulumi.Input.fromValue(GetAccountLegacyFlagsEnterpriseZoneQuota.fromMap((map['enterpriseZoneQuota']! as Map).cast<String, dynamic>())),
    );
  }
}
