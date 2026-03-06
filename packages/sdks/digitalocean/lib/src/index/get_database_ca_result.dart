// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseCa.
class GetDatabaseCaResult {
  /// The CA certificate used to secure database connections decoded to a string.
  final String certificate;
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetDatabaseCaResult].
  /// [certificate] The CA certificate used to secure database connections decoded to a string.
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetDatabaseCaResult({
    required this.certificate,
    required this.clusterId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'clusterId': clusterId,
      'id': id,
    };
  }

  factory GetDatabaseCaResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseCaResult(
      certificate: map['certificate'] as String,
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
    );
  }
}

