// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_result_legacy_flags_enterprise_zone_quota.dart';

class GetAccountsResultLegacyFlags {
  /// Enterprise zone quota for standard and enterprise accounts. Accounts without a quota have a maximum of 0.
  final pulumi.Input<GetAccountsResultLegacyFlagsEnterpriseZoneQuota> enterpriseZoneQuota;

  /// Creates a new [GetAccountsResultLegacyFlags].
  /// [enterpriseZoneQuota] Enterprise zone quota for standard and enterprise accounts. Accounts without a quota have a maximum of 0.
  const GetAccountsResultLegacyFlags({
    required this.enterpriseZoneQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseZoneQuota': pulumi.Input.mapInputValue<GetAccountsResultLegacyFlagsEnterpriseZoneQuota, Map<String, dynamic>>(enterpriseZoneQuota, (value) => value.toMap()),
    };
  }

  factory GetAccountsResultLegacyFlags.fromMap(Map<String, dynamic> map) {
    return GetAccountsResultLegacyFlags(
      enterpriseZoneQuota: pulumi.Input.fromValue(GetAccountsResultLegacyFlagsEnterpriseZoneQuota.fromMap((map['enterpriseZoneQuota']! as Map).cast<String, dynamic>())),
    );
  }
}
