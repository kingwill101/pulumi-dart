// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_config_credentials_key.dart';

class GetTokenValidationConfigCredentials {
  final pulumi.Input<List<GetTokenValidationConfigCredentialsKey>> keys;

  /// Creates a new [GetTokenValidationConfigCredentials].
  /// [keys] Required.
  const GetTokenValidationConfigCredentials({
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': pulumi.Input.mapInputValue<List<GetTokenValidationConfigCredentialsKey>, List<Map<String, dynamic>>>(keys, (value) => pulumi.Input.encodeList<GetTokenValidationConfigCredentialsKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTokenValidationConfigCredentials.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationConfigCredentials(
      keys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTokenValidationConfigCredentialsKey>(map['keys']!, (value) => GetTokenValidationConfigCredentialsKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
