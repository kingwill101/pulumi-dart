// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataGroupRecord {
  final pulumi.Input<String>? data;
  /// Name of the datagroup
  final pulumi.Input<String> name;

  /// Creates a new [GetDataGroupRecord].
  /// [data] Optional.
  /// [name] Name of the datagroup
  GetDataGroupRecord({
    this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': name,
    };
  }

  factory GetDataGroupRecord.fromMap(Map<String, dynamic> map) {
    return GetDataGroupRecord(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

