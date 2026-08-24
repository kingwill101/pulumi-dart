// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_configs_result_credentials_key.dart';

class GetTokenValidationConfigsResultCredentials {
  final pulumi.Input<List<GetTokenValidationConfigsResultCredentialsKey>> keys;

  /// Creates a new [GetTokenValidationConfigsResultCredentials].
  /// [keys] Required.
  const GetTokenValidationConfigsResultCredentials({
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': pulumi.Input.mapInputValue<List<GetTokenValidationConfigsResultCredentialsKey>, List<Map<String, dynamic>>>(keys, (value) => pulumi.Input.encodeList<GetTokenValidationConfigsResultCredentialsKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTokenValidationConfigsResultCredentials.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationConfigsResultCredentials(
      keys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTokenValidationConfigsResultCredentialsKey>(map['keys']!, (value) => GetTokenValidationConfigsResultCredentialsKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
