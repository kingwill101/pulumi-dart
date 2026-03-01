// ignore_for_file: unused_element, unnecessary_cast


/// The list of Energy services resource's Data Partition Names.
class DataPartitionNamesResponse {
  final String? name;

  /// Creates a new [DataPartitionNamesResponse].
  /// [name] Optional.
  DataPartitionNamesResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DataPartitionNamesResponse.fromMap(Map<String, dynamic> map) {
    return DataPartitionNamesResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

