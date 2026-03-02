// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_baseline_values_key_usage_base_key_usage.dart';
import 'ca_pool_issuance_policy_baseline_values_key_usage_extended_key_usage.dart';
import 'ca_pool_issuance_policy_baseline_values_key_usage_unknown_extended_key_usage.dart';

class CaPoolIssuancePolicyBaselineValuesKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsage> baseKeyUsage;
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsage> extendedKeyUsage;
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final pulumi.Input<List<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage>>? unknownExtendedKeyUsages;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesKeyUsage].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CaPoolIssuancePolicyBaselineValuesKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': pulumi.Input.mapInputValue<CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsage, Map<String, dynamic>>(baseKeyUsage, (value) => value.toMap()),
      'extendedKeyUsage': pulumi.Input.mapInputValue<CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsage, Map<String, dynamic>>(extendedKeyUsage, (value) => value.toMap()),
      'unknownExtendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CaPoolIssuancePolicyBaselineValuesKeyUsage.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesKeyUsage(
      baseKeyUsage: (CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsage.fromMap((map['baseKeyUsage'] as Map).cast<String, dynamic>())).input(),
      extendedKeyUsage: (CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsage.fromMap((map['extendedKeyUsage'] as Map).cast<String, dynamic>())).input(),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null ? null : (pulumi.Input.decodeList<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage>(map['unknownExtendedKeyUsages'], (value) => CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

