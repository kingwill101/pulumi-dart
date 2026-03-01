// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsSpanner {
  /// to fetch tags of the resource
  final bool? fetchTags;
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsSpanner].
  /// [fetchTags] to fetch tags of the resource
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsSpanner({
    this.fetchTags,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsSpanner.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsSpanner(
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

