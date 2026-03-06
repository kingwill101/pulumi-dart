// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataGroupRecord {
  final pulumi.Input<String>? data;
  /// Name of the datagroup
  final pulumi.Input<String> name;

  /// Creates a new [GetDataGroupRecord].
  /// [data] Optional.
  /// [name] Name of the datagroup
  const GetDataGroupRecord({
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
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

