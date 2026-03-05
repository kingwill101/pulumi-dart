// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_group_record.dart';

/// Input properties used for looking up and filtering DataGroup resources.
class DataGroupState {
  /// Set `false` if you want to Create External Datagroups. default is `true`,means creates internal datagroup.
  final pulumi.Input<bool>? internal;
  /// Name of the datagroup
  final pulumi.Input<String>? name;
  /// a set of `name` and `data` attributes, name must be of type specified by the `type` attributed (`string`, `ip` and `integer`), data is optional and can take any value, multiple `record` sets can be specified as needed.
  final pulumi.Input<List<DataGroupRecord>>? records;
  /// Path to a file with records in it,The file should be well-formed,it includes records, one per line,that resemble the following format "key separator value". For example, `foo := bar`.
  /// This should be used in conjunction with `internal` attribute set `false`
  final pulumi.Input<String>? recordsSrc;
  /// datagroup type (applies to the `name` field of the record), supports: `string`, `ip` or `integer`
  final pulumi.Input<String>? type;

  /// Creates a new [DataGroupState].
  /// [internal] Set `false` if you want to Create External Datagroups. default is `true`,means creates internal datagroup.
  /// [name] Name of the datagroup
  /// [records] a set of `name` and `data` attributes, name must be of type specified by the `type` attributed (`string`, `ip` and `integer`), data is optional and can take any value, multiple `record` sets can be specified as needed.
  /// [recordsSrc] Path to a file with records in it,The file should be well-formed,it includes records, one per line,that resemble the following format "key separator value". For example, `foo := bar`.
  /// [type] datagroup type (applies to the `name` field of the record), supports: `string`, `ip` or `integer`
  DataGroupState({
    this.internal,
    this.name,
    this.records,
    this.recordsSrc,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internal': ?internal,
      'name': ?name,
      'records': ?pulumi.Input.mapOptionalInputValue<List<DataGroupRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<DataGroupRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordsSrc': ?recordsSrc,
      'type': ?type,
    };
  }

  factory DataGroupState.fromMap(Map<String, dynamic> map) {
    return DataGroupState(
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataGroupRecord>(guardedValue, (value) => DataGroupRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recordsSrc: (() { final guardedValue = map['recordsSrc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

