// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_predefined_values_key_usage_base_key_usage.dart';
import 'certificate_template_predefined_values_key_usage_extended_key_usage.dart';
import 'certificate_template_predefined_values_key_usage_unknown_extended_key_usage.dart';

class CertificateTemplatePredefinedValuesKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage>? baseKeyUsage;
  /// Detailed scenarios in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage>? extendedKeyUsage;
  /// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage>>? unknownExtendedKeyUsages;

  /// Creates a new [CertificateTemplatePredefinedValuesKeyUsage].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Detailed scenarios in which a key may be used.
  /// [unknownExtendedKeyUsages] Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  CertificateTemplatePredefinedValuesKeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage, Map<String, dynamic>>(baseKeyUsage, (value) => value.toMap()),
      'extendedKeyUsage': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage, Map<String, dynamic>>(extendedKeyUsage, (value) => value.toMap()),
      'unknownExtendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateTemplatePredefinedValuesKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesKeyUsage(
      baseKeyUsage: map['baseKeyUsage'] == null ? null : (CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage.fromMap((map['baseKeyUsage'] as Map).cast<String, dynamic>())).input(),
      extendedKeyUsage: map['extendedKeyUsage'] == null ? null : (CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage.fromMap((map['extendedKeyUsage'] as Map).cast<String, dynamic>())).input(),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null ? null : (pulumi.Input.decodeList<CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage>(map['unknownExtendedKeyUsages'], (value) => CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

