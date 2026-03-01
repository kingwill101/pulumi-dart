// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioningResponse {
  /// Number of milliseconds for which to keep the storage for a partition.
  final String expirationMs;
  /// Type of partitioning.
  final String type;

  /// Creates a new [TimePartitioningResponse].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  TimePartitioningResponse({
    required this.expirationMs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': expirationMs,
      'type': type,
    };
  }

  factory TimePartitioningResponse.fromMap(Map<String, dynamic> map) {
    return TimePartitioningResponse(
      expirationMs: map['expirationMs'] as String,
      type: map['type'] as String,
    );
  }
}

