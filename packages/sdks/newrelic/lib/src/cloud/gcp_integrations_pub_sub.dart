// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsPubSub {
  /// to fetch tags of the resource
  final bool? fetchTags;
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsPubSub].
  /// [fetchTags] to fetch tags of the resource
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsPubSub({
    this.fetchTags,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsPubSub.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsPubSub(
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

