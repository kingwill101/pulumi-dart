// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRecordSet.
class GetRecordSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managedZone;
  final String name;
  final String? project;
  /// The string data for the records in this record set.
  final List<String> rrdatas;
  /// The time-to-live of this record set (seconds).
  final int ttl;
  final String type;

  /// Creates a new [GetRecordSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedZone] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [rrdatas] The string data for the records in this record set.
  /// [ttl] The time-to-live of this record set (seconds).
  /// [type] Required.
  const GetRecordSetResult({
    required this.id,
    required this.managedZone,
    required this.name,
    this.project,
    required this.rrdatas,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managedZone': managedZone,
      'name': name,
      'project': ?project,
      'rrdatas': rrdatas,
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetRecordSetResult(
      id: map['id'] as String,
      managedZone: map['managedZone'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rrdatas: (map['rrdatas'] as List).cast<String>(),
      ttl: map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}

