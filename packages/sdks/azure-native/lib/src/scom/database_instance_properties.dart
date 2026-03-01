// ignore_for_file: unused_element, unnecessary_cast


/// The properties of database instance
class DatabaseInstanceProperties {
  /// Resource Id of existing database instance
  final String? databaseInstanceId;

  /// Creates a new [DatabaseInstanceProperties].
  /// [databaseInstanceId] Resource Id of existing database instance
  DatabaseInstanceProperties({
    this.databaseInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstanceId': ?databaseInstanceId,
    };
  }

  factory DatabaseInstanceProperties.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceProperties(
      databaseInstanceId: map['databaseInstanceId'] == null ? null : map['databaseInstanceId'] as String,
    );
  }
}

