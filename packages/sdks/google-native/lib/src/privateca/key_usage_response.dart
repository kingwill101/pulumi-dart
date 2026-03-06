// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_key_usage_options_response.dart';
import 'key_usage_options_response.dart';
import 'object_id_response.dart';

/// A KeyUsage describes key usage values that may appear in an X.509 certificate.
class KeyUsageResponse {
  /// Describes high-level ways in which a key may be used.
  final pulumi.Input<KeyUsageOptionsResponse> baseKeyUsage;
  /// Detailed scenarios in which a key may be used.
  final pulumi.Input<ExtendedKeyUsageOptionsResponse> extendedKeyUsage;
  /// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  final pulumi.Input<List<ObjectIdResponse>> unknownExtendedKeyUsages;

  /// Creates a new [KeyUsageResponse].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Detailed scenarios in which a key may be used.
  /// [unknownExtendedKeyUsages] Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  const KeyUsageResponse({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    required this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': pulumi.Input.mapInputValue<KeyUsageOptionsResponse, Map<String, dynamic>>(baseKeyUsage, (value) => value.toMap()),
      'extendedKeyUsage': pulumi.Input.mapInputValue<ExtendedKeyUsageOptionsResponse, Map<String, dynamic>>(extendedKeyUsage, (value) => value.toMap()),
      'unknownExtendedKeyUsages': pulumi.Input.mapInputValue<List<ObjectIdResponse>, List<Map<String, dynamic>>>(unknownExtendedKeyUsages, (value) => pulumi.Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KeyUsageResponse.fromMap(Map<String, dynamic> map) {
    return KeyUsageResponse(
      baseKeyUsage: pulumi.Input.fromValue(KeyUsageOptionsResponse.fromMap((map['baseKeyUsage']! as Map).cast<String, dynamic>())),
      extendedKeyUsage: pulumi.Input.fromValue(ExtendedKeyUsageOptionsResponse.fromMap((map['extendedKeyUsage']! as Map).cast<String, dynamic>())),
      unknownExtendedKeyUsages: pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectIdResponse>(map['unknownExtendedKeyUsages']!, (value) => ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

