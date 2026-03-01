// ignore_for_file: unused_element, unnecessary_cast


/// Persistence-related configuration for the Redis Enterprise database
class PersistenceResponse {
  /// Sets whether AOF is enabled. Note that at most one of AOF or RDB persistence may be enabled.
  final bool? aofEnabled;
  /// Sets the frequency at which data is written to disk. Defaults to '1s', meaning 'every second'. Note that the 'always' setting is deprecated, because of its performance impact.
  final String? aofFrequency;
  /// Sets whether RDB is enabled. Note that at most one of AOF or RDB persistence may be enabled.
  final bool? rdbEnabled;
  /// Sets the frequency at which a snapshot of the database is created.
  final String? rdbFrequency;

  /// Creates a new [PersistenceResponse].
  /// [aofEnabled] Sets whether AOF is enabled. Note that at most one of AOF or RDB persistence may be enabled.
  /// [aofFrequency] Sets the frequency at which data is written to disk. Defaults to '1s', meaning 'every second'. Note that the 'always' setting is deprecated, because of its performance impact.
  /// [rdbEnabled] Sets whether RDB is enabled. Note that at most one of AOF or RDB persistence may be enabled.
  /// [rdbFrequency] Sets the frequency at which a snapshot of the database is created.
  PersistenceResponse({
    this.aofEnabled,
    this.aofFrequency,
    this.rdbEnabled,
    this.rdbFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aofEnabled': ?aofEnabled,
      'aofFrequency': ?aofFrequency,
      'rdbEnabled': ?rdbEnabled,
      'rdbFrequency': ?rdbFrequency,
    };
  }

  factory PersistenceResponse.fromMap(Map<String, dynamic> map) {
    return PersistenceResponse(
      aofEnabled: map['aofEnabled'] == null ? null : map['aofEnabled'] as bool,
      aofFrequency: map['aofFrequency'] == null ? null : map['aofFrequency'] as String,
      rdbEnabled: map['rdbEnabled'] == null ? null : map['rdbEnabled'] as bool,
      rdbFrequency: map['rdbFrequency'] == null ? null : map['rdbFrequency'] as String,
    );
  }
}

