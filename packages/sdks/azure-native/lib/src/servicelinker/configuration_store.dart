// ignore_for_file: unused_element, unnecessary_cast


/// An option to store configuration into different place
class ConfigurationStore {
  /// The app configuration id to store configuration
  final String? appConfigurationId;

  /// Creates a new [ConfigurationStore].
  /// [appConfigurationId] The app configuration id to store configuration
  ConfigurationStore({
    this.appConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigurationId': ?appConfigurationId,
    };
  }

  factory ConfigurationStore.fromMap(Map<String, dynamic> map) {
    return ConfigurationStore(
      appConfigurationId: map['appConfigurationId'] == null ? null : map['appConfigurationId'] as String,
    );
  }
}

