// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_config_credentials_key.dart';

class TokenValidationConfigCredentials {
  final pulumi.Input<List<TokenValidationConfigCredentialsKey>> keys;

  /// Creates a new [TokenValidationConfigCredentials].
  /// [keys] Required.
  const TokenValidationConfigCredentials({
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': pulumi.Input.mapInputValue<List<TokenValidationConfigCredentialsKey>, List<Map<String, dynamic>>>(keys, (value) => pulumi.Input.encodeList<TokenValidationConfigCredentialsKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TokenValidationConfigCredentials.fromMap(Map<String, dynamic> map) {
    return TokenValidationConfigCredentials(
      keys: pulumi.Input.fromValue(pulumi.Input.decodeList<TokenValidationConfigCredentialsKey>(map['keys']!, (value) => TokenValidationConfigCredentialsKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
