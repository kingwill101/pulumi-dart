// ignore_for_file: unused_element, unnecessary_cast


class DatabasePostgresqlConfigTimescaledb {
  final int? maxBackgroundWorkers;

  /// Creates a new [DatabasePostgresqlConfigTimescaledb].
  /// [maxBackgroundWorkers] Optional.
  DatabasePostgresqlConfigTimescaledb({
    this.maxBackgroundWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBackgroundWorkers': ?maxBackgroundWorkers,
    };
  }

  factory DatabasePostgresqlConfigTimescaledb.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlConfigTimescaledb(
      maxBackgroundWorkers: map['maxBackgroundWorkers'] == null ? null : map['maxBackgroundWorkers'] as int,
    );
  }
}

