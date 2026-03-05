// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config_x509_config_key_usage_base_key_usage.dart';
import 'authority_config_x509_config_key_usage_extended_key_usage.dart';
import 'authority_config_x509_config_key_usage_unknown_extended_key_usage.dart';

class AuthorityConfigX509ConfigKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigX509ConfigKeyUsageBaseKeyUsage> baseKeyUsage;
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigX509ConfigKeyUsageExtendedKeyUsage> extendedKeyUsage;
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>>? unknownExtendedKeyUsages;

  /// Creates a new [AuthorityConfigX509ConfigKeyUsage].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  AuthorityConfigX509ConfigKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': pulumi.Input.mapInputValue<AuthorityConfigX509ConfigKeyUsageBaseKeyUsage, Map<String, dynamic>>(baseKeyUsage, (value) => value.toMap()),
      'extendedKeyUsage': pulumi.Input.mapInputValue<AuthorityConfigX509ConfigKeyUsageExtendedKeyUsage, Map<String, dynamic>>(extendedKeyUsage, (value) => value.toMap()),
      'unknownExtendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorityConfigX509ConfigKeyUsage.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509ConfigKeyUsage(
      baseKeyUsage: pulumi.Input.fromValue(AuthorityConfigX509ConfigKeyUsageBaseKeyUsage.fromMap((map['baseKeyUsage']! as Map).cast<String, dynamic>())),
      extendedKeyUsage: pulumi.Input.fromValue(AuthorityConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap((map['extendedKeyUsage']! as Map).cast<String, dynamic>())),
      unknownExtendedKeyUsages: (() { final guardedValue = map['unknownExtendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>(guardedValue, (value) => AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

