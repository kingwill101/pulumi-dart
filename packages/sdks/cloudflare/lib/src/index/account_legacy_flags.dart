// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_legacy_flags_enterprise_zone_quota.dart';

class AccountLegacyFlags {
  /// Enterprise zone quota for standard and enterprise accounts. Accounts without a quota have a maximum of 0.
  final pulumi.Input<AccountLegacyFlagsEnterpriseZoneQuota?>? enterpriseZoneQuota;

  /// Creates a new [AccountLegacyFlags].
  /// [enterpriseZoneQuota] Enterprise zone quota for standard and enterprise accounts. Accounts without a quota have a maximum of 0.
  const AccountLegacyFlags({
    this.enterpriseZoneQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseZoneQuota': ?pulumi.Input.mapOptionalInputValue<AccountLegacyFlagsEnterpriseZoneQuota, Map<String, dynamic>>(enterpriseZoneQuota, (value) => value.toMap()),
    };
  }

  factory AccountLegacyFlags.fromMap(Map<String, dynamic> map) {
    return AccountLegacyFlags(
      enterpriseZoneQuota: (() { final guardedValue = map['enterpriseZoneQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountLegacyFlagsEnterpriseZoneQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
