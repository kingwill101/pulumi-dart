// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey {
  /// The byte sequence used to delimit concatenated key fields, as a base64-encoded string
  /// (for example, `Iw==` for `#`). Must be specified if multiple key fields are used. The
  /// delimiter must contain at least 1 character and at most 50 characters.
  final pulumi.Input<String?>? delimiter;
  /// The key fields to construct the row key from. The fields must be present in the message
  /// as top-level fields; JSON path expressions will not traverse into nested objects.
  final pulumi.Input<List<String>> keyFields;

  /// Creates a new [SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey].
  /// [delimiter] The byte sequence used to delimit concatenated key fields, as a base64-encoded string
  /// [keyFields] The key fields to construct the row key from. The fields must be present in the message
  const SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey({
    this.delimiter,
    required this.keyFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'keyFields': keyFields,
    };
  }

  factory SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey.fromMap(Map<String, dynamic> map) {
    return SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey(
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyFields: pulumi.Input.fromValue((map['keyFields'] as List).cast<String>()),
    );
  }
}
