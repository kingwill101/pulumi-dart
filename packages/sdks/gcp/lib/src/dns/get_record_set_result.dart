// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRecordSet.
class GetRecordSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managedZone;
  final String? name;
  final String? project;
  /// The string data for the records in this record set.
  final List<String>? rrdatas;
  /// The time-to-live of this record set (seconds).
  final int? ttl;
  final String? type;

  /// Creates a new [GetRecordSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedZone] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [rrdatas] The string data for the records in this record set.
  /// [ttl] The time-to-live of this record set (seconds).
  /// [type] Optional.
  const GetRecordSetResult({
    this.id,
    this.managedZone,
    this.name,
    this.project,
    this.rrdatas,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managedZone': ?managedZone,
      'name': ?name,
      'project': ?project,
      'rrdatas': ?rrdatas,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory GetRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetRecordSetResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedZone: (() { final guardedValue = map['managedZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rrdatas: (() { final guardedValue = map['rrdatas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
