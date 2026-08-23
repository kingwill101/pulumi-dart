// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordSetsRrset {
  /// The name of the record set to filter by.
  final pulumi.Input<String> name;
  /// A list of the record set's data (e.g., IP addresses, target names).
  final pulumi.Input<List<String>> rrdatas;
  /// The time-to-live of this record set (seconds).
  final pulumi.Input<int> ttl;
  /// The type of the record set to filter by.
  final pulumi.Input<String> type;

  /// Creates a new [GetRecordSetsRrset].
  /// [name] The name of the record set to filter by.
  /// [rrdatas] A list of the record set's data (e.g., IP addresses, target names).
  /// [ttl] The time-to-live of this record set (seconds).
  /// [type] The type of the record set to filter by.
  const GetRecordSetsRrset({
    required this.name,
    required this.rrdatas,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rrdatas': rrdatas,
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetRecordSetsRrset.fromMap(Map<String, dynamic> map) {
    return GetRecordSetsRrset(
      name: pulumi.Input.fromValue(map['name'] as String),
      rrdatas: pulumi.Input.fromValue((map['rrdatas'] as List).cast<String>()),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
