// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data_key_spec.dart';

/// Represents a public key data along with its format.
class KeyData {
  /// The specifications for the key.
  final pulumi.Input<KeyDataKeySpec> keySpec;

  /// Creates a new [KeyData].
  /// [keySpec] The specifications for the key.
  KeyData({
    required this.keySpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySpec': pulumi.Input.mapInputValue<KeyDataKeySpec, String>(keySpec, (value) => value.wireValue),
    };
  }

  factory KeyData.fromMap(Map<String, dynamic> map) {
    return KeyData(
      keySpec: pulumi.Input.fromValue(KeyDataKeySpec.fromValue(map['keySpec']! as String)),
    );
  }
}

