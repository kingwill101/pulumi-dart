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
  GetDataGroupArgs({
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
      name: (map['name'] as String).input(),
      partition: (map['partition'] as String).input(),
      records: map['records'] == null ? null : (pulumi.Input.decodeList<GetDataGroupRecord>(map['records'], (value) => GetDataGroupRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

