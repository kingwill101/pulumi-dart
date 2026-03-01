// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsStorage {
  /// to fetch tags of the resource
  final bool? fetchTags;
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsStorage].
  /// [fetchTags] to fetch tags of the resource
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsStorage({
    this.fetchTags,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsStorage.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsStorage(
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

