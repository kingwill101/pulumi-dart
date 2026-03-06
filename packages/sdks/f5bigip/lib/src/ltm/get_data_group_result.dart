// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_group_record.dart';

/// Result data returned by getDataGroup.
class GetDataGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String partition;
  /// Specifies record of type (string/ip/integer)
  final List<GetDataGroupRecord> records;
  /// The Data Group type (string, ip, integer)"
  final String type;

  /// Creates a new [GetDataGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [partition] Required.
  /// [records] Specifies record of type (string/ip/integer)
  /// [type] The Data Group type (string, ip, integer)"
  const GetDataGroupResult({
    required this.id,
    required this.name,
    required this.partition,
    required this.records,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'partition': partition,
      'records': pulumi.Input.encodeList<GetDataGroupRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetDataGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDataGroupResult(
      id: map['id'] as String,
      name: map['name'] as String,
      partition: map['partition'] as String,
      records: pulumi.Input.decodeList<GetDataGroupRecord>(map['records']!, (value) => GetDataGroupRecord.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

