// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_share_properties_cors_rule.dart';
import 'account_share_properties_retention_policy.dart';
import 'account_share_properties_smb.dart';

class AccountShareProperties {
  /// A `cors_rule` block as defined below.
  final pulumi.Input<List<AccountSharePropertiesCorsRule>>? corsRules;
  /// A `retention_policy` block as defined below.
  final pulumi.Input<AccountSharePropertiesRetentionPolicy>? retentionPolicy;
  /// A `smb` block as defined below.
  final pulumi.Input<AccountSharePropertiesSmb>? smb;

  /// Creates a new [AccountShareProperties].
  /// [corsRules] A `cors_rule` block as defined below.
  /// [retentionPolicy] A `retention_policy` block as defined below.
  /// [smb] A `smb` block as defined below.
  AccountShareProperties({
    this.corsRules,
    this.retentionPolicy,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<AccountSharePropertiesCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<AccountSharePropertiesCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<AccountSharePropertiesRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'smb': ?pulumi.Input.mapOptionalInputValue<AccountSharePropertiesSmb, Map<String, dynamic>>(smb, (value) => value.toMap()),
    };
  }

  factory AccountShareProperties.fromMap(Map<String, dynamic> map) {
    return AccountShareProperties(
      corsRules: map['corsRules'] == null ? null : (pulumi.Input.decodeList<AccountSharePropertiesCorsRule>(map['corsRules'], (value) => AccountSharePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (AccountSharePropertiesRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
      smb: map['smb'] == null ? null : (AccountSharePropertiesSmb.fromMap((map['smb'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

