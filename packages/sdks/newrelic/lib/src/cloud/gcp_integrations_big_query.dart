// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsBigQuery {
  /// to fetch tags of the resource
  final bool? fetchTags;
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsBigQuery].
  /// [fetchTags] to fetch tags of the resource
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsBigQuery({
    this.fetchTags,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsBigQuery.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsBigQuery(
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

