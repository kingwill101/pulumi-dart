// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_config_x509_config_key_usage_base_key_usage.dart';
import 'certificate_config_x509_config_key_usage_extended_key_usage.dart';
import 'certificate_config_x509_config_key_usage_unknown_extended_key_usage.dart';

class CertificateConfigX509ConfigKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigX509ConfigKeyUsageBaseKeyUsage> baseKeyUsage;
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigX509ConfigKeyUsageExtendedKeyUsage> extendedKeyUsage;
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>?>? unknownExtendedKeyUsages;

  /// Creates a new [CertificateConfigX509ConfigKeyUsage].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const CertificateConfigX509ConfigKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': pulumi.Input.mapInputValue<CertificateConfigX509ConfigKeyUsageBaseKeyUsage, Map<String, dynamic>>(baseKeyUsage, (value) => value.toMap()),
      'extendedKeyUsage': pulumi.Input.mapInputValue<CertificateConfigX509ConfigKeyUsageExtendedKeyUsage, Map<String, dynamic>>(extendedKeyUsage, (value) => value.toMap()),
      'unknownExtendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateConfigX509ConfigKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509ConfigKeyUsage(
      baseKeyUsage: pulumi.Input.fromValue(CertificateConfigX509ConfigKeyUsageBaseKeyUsage.fromMap((map['baseKeyUsage']! as Map).cast<String, dynamic>())),
      extendedKeyUsage: pulumi.Input.fromValue(CertificateConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap((map['extendedKeyUsage']! as Map).cast<String, dynamic>())),
      unknownExtendedKeyUsages: (() { final guardedValue = map['unknownExtendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>(guardedValue, (value) => CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
