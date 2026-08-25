// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_x509_description_key_usage_base_key_usage.dart';
import 'certificate_certificate_description_x509_description_key_usage_extended_key_usage.dart';
import 'certificate_certificate_description_x509_description_key_usage_unknown_extended_key_usage.dart';

class CertificateCertificateDescriptionX509DescriptionKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage>?>? baseKeyUsages;
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage>?>? extendedKeyUsages;
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage>?>? unknownExtendedKeyUsages;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionKeyUsage].
  /// [baseKeyUsages] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsages] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const CertificateCertificateDescriptionX509DescriptionKeyUsage({
    this.baseKeyUsages,
    this.extendedKeyUsages,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage>, List<Map<String, dynamic>>>(baseKeyUsages, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage>, List<Map<String, dynamic>>>(extendedKeyUsages, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unknownExtendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsage(
      baseKeyUsages: (() { final guardedValue = map['baseKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage>(guardedValue, (value) => CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedKeyUsages: (() { final guardedValue = map['extendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage>(guardedValue, (value) => CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      unknownExtendedKeyUsages: (() { final guardedValue = map['unknownExtendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage>(guardedValue, (value) => CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
