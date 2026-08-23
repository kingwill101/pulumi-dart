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
  const CertificateTemplatePredefinedValuesKeyUsage({
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
      baseKeyUsage: (() { final guardedValue = map['baseKeyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedKeyUsage: (() { final guardedValue = map['extendedKeyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unknownExtendedKeyUsages: (() { final guardedValue = map['unknownExtendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage>(guardedValue, (value) => CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
