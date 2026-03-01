// ignore_for_file: unused_element, unnecessary_cast


class ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  /// Creates a new [ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}

