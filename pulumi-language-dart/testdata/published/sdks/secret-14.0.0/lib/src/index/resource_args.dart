// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data.dart';

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<String> private;
  final pulumi.Input<List<String>> privateArray;
  final pulumi.Input<Data> privateData;
  final pulumi.Input<List<Data>> privateDataArray;
  final pulumi.Input<Map<String, Data>> privateDataMap;
  final pulumi.Input<Map<String, String>> privateMap;
  final pulumi.Input<String> public;
  final pulumi.Input<Data> publicData;

  /// Creates a new [ResourceArgs].
  /// [private] Required.
  /// [privateArray] Required.
  /// [privateData] Required.
  /// [privateDataArray] Required.
  /// [privateDataMap] Required.
  /// [privateMap] Required.
  /// [public] Required.
  /// [publicData] Required.
  const ResourceArgs({
    required this.private,
    required this.privateArray,
    required this.privateData,
    required this.privateDataArray,
    required this.privateDataMap,
    required this.privateMap,
    required this.public,
    required this.publicData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'private': private,
      'privateArray': privateArray,
      'privateData': pulumi.Input.mapInputValue<Data, Map<String, dynamic>>(privateData, (value) => value.toMap()),
      'privateDataArray': pulumi.Input.mapInputValue<List<Data>, List<Map<String, dynamic>>>(privateDataArray, (value) => pulumi.Input.encodeList<Data, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDataMap': pulumi.Input.mapInputValue<Map<String, Data>, Map<String, Map<String, dynamic>>>(privateDataMap, (value) => pulumi.Input.encodeMapValues<Data, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateMap': privateMap,
      'public': public,
      'publicData': pulumi.Input.mapInputValue<Data, Map<String, dynamic>>(publicData, (value) => value.toMap()),
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      private: pulumi.Input.fromValue(map['private'] as String),
      privateArray: pulumi.Input.fromValue((map['privateArray'] as List).cast<String>()),
      privateData: pulumi.Input.fromValue(Data.fromMap((map['privateData']! as Map).cast<String, dynamic>())),
      privateDataArray: pulumi.Input.fromValue(pulumi.Input.decodeList<Data>(map['privateDataArray']!, (value) => Data.fromMap((value as Map).cast<String, dynamic>()))),
      privateDataMap: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Data>(map['privateDataMap']!, (value) => Data.fromMap((value as Map).cast<String, dynamic>()))),
      privateMap: pulumi.Input.fromValue((map['privateMap'] as Map).cast<String, String>()),
      public: pulumi.Input.fromValue(map['public'] as String),
      publicData: pulumi.Input.fromValue(Data.fromMap((map['publicData']! as Map).cast<String, dynamic>())),
    );
  }
}
