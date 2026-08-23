// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_key_usage_options.dart';
import 'key_usage_options.dart';
import 'object_id.dart';

/// A KeyUsage describes key usage values that may appear in an X.509 certificate.
class KeyUsage {
  /// Describes high-level ways in which a key may be used.
  final pulumi.Input<KeyUsageOptions>? baseKeyUsage;
  /// Detailed scenarios in which a key may be used.
  final pulumi.Input<ExtendedKeyUsageOptions>? extendedKeyUsage;
  /// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  final pulumi.Input<List<ObjectId>>? unknownExtendedKeyUsages;

  /// Creates a new [KeyUsage].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Detailed scenarios in which a key may be used.
  /// [unknownExtendedKeyUsages] Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  const KeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': ?pulumi.Input.mapOptionalInputValue<KeyUsageOptions, Map<String, dynamic>>(baseKeyUsage, (value) => value.toMap()),
      'extendedKeyUsage': ?pulumi.Input.mapOptionalInputValue<ExtendedKeyUsageOptions, Map<String, dynamic>>(extendedKeyUsage, (value) => value.toMap()),
      'unknownExtendedKeyUsages': ?pulumi.Input.mapOptionalInputValue<List<ObjectId>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<ObjectId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KeyUsage.fromMap(Map<String, dynamic> map) {
    return KeyUsage(
      baseKeyUsage: (() { final guardedValue = map['baseKeyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyUsageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedKeyUsage: (() { final guardedValue = map['extendedKeyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedKeyUsageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unknownExtendedKeyUsages: (() { final guardedValue = map['unknownExtendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectId>(guardedValue, (value) => ObjectId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
