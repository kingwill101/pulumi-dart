// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data.dart';
import 'inner_data.dart';

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<Data> data;
  final pulumi.Input<List<InnerData>?>? dataList;
  /// A non plain input to compare against the plain inputs, as well as testing plain/non-plain nesting.
  final pulumi.Input<Data?>? nonPlainData;

  /// Creates a new [ResourceArgs].
  /// [data] Required.
  /// [dataList] Optional.
  /// [nonPlainData] A non plain input to compare against the plain inputs, as well as testing plain/non-plain nesting.
  const ResourceArgs({
    required this.data,
    this.dataList,
    this.nonPlainData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': pulumi.Input.mapInputValue<Data, Map<String, dynamic>>(data, (value) => value.toMap()),
      'dataList': ?pulumi.Input.mapOptionalInputValue<List<InnerData>, List<Map<String, dynamic>>>(dataList, (value) => pulumi.Input.encodeList<InnerData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nonPlainData': ?pulumi.Input.mapOptionalInputValue<Data, Map<String, dynamic>>(nonPlainData, (value) => value.toMap()),
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      data: pulumi.Input.fromValue(Data.fromMap((map['data']! as Map).cast<String, dynamic>())),
      dataList: (() { final guardedValue = map['dataList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InnerData>(guardedValue, (value) => InnerData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nonPlainData: (() { final guardedValue = map['nonPlainData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Data.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
