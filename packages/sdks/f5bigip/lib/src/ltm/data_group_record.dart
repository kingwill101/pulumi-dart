// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataGroupRecord {
  /// , sets the value of the record's `data` attribute, specifying a value here will create a record in the form of `name := data`
  final pulumi.Input<String>? data;
  /// , sets the value of the record's `name` attribute, must be of type defined in `type` attribute
  final pulumi.Input<String> name;

  /// Creates a new [DataGroupRecord].
  /// [data] , sets the value of the record's `data` attribute, specifying a value here will create a record in the form of `name := data`
  /// [name] , sets the value of the record's `name` attribute, must be of type defined in `type` attribute
  DataGroupRecord({
    this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': name,
    };
  }

  factory DataGroupRecord.fromMap(Map<String, dynamic> map) {
    return DataGroupRecord(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

