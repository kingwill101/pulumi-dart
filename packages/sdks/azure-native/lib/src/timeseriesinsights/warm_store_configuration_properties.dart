// ignore_for_file: unused_element, unnecessary_cast


/// The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
class WarmStoreConfigurationProperties {
  /// ISO8601 timespan specifying the number of days the environment's events will be available for query from the warm store.
  final String dataRetention;

  /// Creates a new [WarmStoreConfigurationProperties].
  /// [dataRetention] ISO8601 timespan specifying the number of days the environment's events will be available for query from the warm store.
  WarmStoreConfigurationProperties({
    required this.dataRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRetention': dataRetention,
    };
  }

  factory WarmStoreConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return WarmStoreConfigurationProperties(
      dataRetention: map['dataRetention'] as String,
    );
  }
}

