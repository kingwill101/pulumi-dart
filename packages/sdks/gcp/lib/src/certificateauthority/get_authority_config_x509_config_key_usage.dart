// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_config_x509_config_key_usage_base_key_usage.dart';
import 'get_authority_config_x509_config_key_usage_extended_key_usage.dart';
import 'get_authority_config_x509_config_key_usage_unknown_extended_key_usage.dart';

class GetAuthorityConfigX509ConfigKeyUsage {
  /// Describes high-level ways in which a key may be used.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage>> baseKeyUsages;
  /// Describes high-level ways in which a key may be used.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage>> extendedKeyUsages;
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>> unknownExtendedKeyUsages;

  /// Creates a new [GetAuthorityConfigX509ConfigKeyUsage].
  /// [baseKeyUsages] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsages] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const GetAuthorityConfigX509ConfigKeyUsage({
    required this.baseKeyUsages,
    required this.extendedKeyUsages,
    required this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsages': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage>, List<Map<String, dynamic>>>(baseKeyUsages, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedKeyUsages': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage>, List<Map<String, dynamic>>>(extendedKeyUsages, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unknownExtendedKeyUsages': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAuthorityConfigX509ConfigKeyUsage.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsage(
      baseKeyUsages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage>(map['baseKeyUsages']!, (value) => GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage.fromMap((value as Map).cast<String, dynamic>()))),
      extendedKeyUsages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage>(map['extendedKeyUsages']!, (value) => GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))),
      unknownExtendedKeyUsages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>(map['unknownExtendedKeyUsages']!, (value) => GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
