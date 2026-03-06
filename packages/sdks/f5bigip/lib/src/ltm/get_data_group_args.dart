// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_group_record.dart';

/// {@template pulumi_ltm_get_data_group_get_data_group_args_doc}
/// Arguments for getDataGroup.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_data_group_get_data_group_args_doc}
class GetDataGroupArgs {
  /// Name of the datagroup
  final pulumi.Input<String> name;
  /// partition of the datagroup
  final pulumi.Input<String> partition;
  /// Specifies record of type (string/ip/integer)
  final pulumi.Input<List<GetDataGroupRecord>>? records;
  /// The Data Group type (string, ip, integer)"
  final pulumi.Input<String>? type;

  /// Creates a new [GetDataGroupArgs].
  /// [name] Name of the datagroup
  /// [partition] partition of the datagroup
  /// [records] Specifies record of type (string/ip/integer)
  /// [type] The Data Group type (string, ip, integer)"
  const GetDataGroupArgs({
    required this.name,
    required this.partition,
    this.records,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'partition': partition,
      'records': ?pulumi.Input.mapOptionalInputValue<List<GetDataGroupRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<GetDataGroupRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory GetDataGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDataGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: pulumi.Input.fromValue(map['partition'] as String),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataGroupRecord>(guardedValue, (value) => GetDataGroupRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

