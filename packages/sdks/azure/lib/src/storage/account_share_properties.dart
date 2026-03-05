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
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountSharePropertiesCorsRule>(guardedValue, (value) => AccountSharePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSharePropertiesRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smb: (() { final guardedValue = map['smb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSharePropertiesSmb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

