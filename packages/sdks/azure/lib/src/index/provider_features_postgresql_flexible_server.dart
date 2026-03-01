// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesPostgresqlFlexibleServer {
  final bool? restartServerOnConfigurationValueChange;

  /// Creates a new [ProviderFeaturesPostgresqlFlexibleServer].
  /// [restartServerOnConfigurationValueChange] Optional.
  ProviderFeaturesPostgresqlFlexibleServer({
    this.restartServerOnConfigurationValueChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartServerOnConfigurationValueChange': ?restartServerOnConfigurationValueChange,
    };
  }

  factory ProviderFeaturesPostgresqlFlexibleServer.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesPostgresqlFlexibleServer(
      restartServerOnConfigurationValueChange: map['restartServerOnConfigurationValueChange'] == null ? null : map['restartServerOnConfigurationValueChange'] as bool,
    );
  }
}

