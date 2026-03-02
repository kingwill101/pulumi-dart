// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistence-related configuration for the Redis Enterprise database
class PersistenceResponse {
  /// Sets whether AOF is enabled. Note that at most one of AOF or RDB persistence may be enabled.
  final pulumi.Input<bool>? aofEnabled;
  /// Sets the frequency at which data is written to disk. Defaults to '1s', meaning 'every second'. Note that the 'always' setting is deprecated, because of its performance impact.
  final pulumi.Input<String>? aofFrequency;
  /// Sets whether RDB is enabled. Note that at most one of AOF or RDB persistence may be enabled.
  final pulumi.Input<bool>? rdbEnabled;
  /// Sets the frequency at which a snapshot of the database is created.
  final pulumi.Input<String>? rdbFrequency;

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
      aofEnabled: map['aofEnabled'] == null ? null : (map['aofEnabled']! as bool).input(),
      aofFrequency: map['aofFrequency'] == null ? null : (map['aofFrequency']! as String).input(),
      rdbEnabled: map['rdbEnabled'] == null ? null : (map['rdbEnabled']! as bool).input(),
      rdbFrequency: map['rdbFrequency'] == null ? null : (map['rdbFrequency']! as String).input(),
    );
  }
}

