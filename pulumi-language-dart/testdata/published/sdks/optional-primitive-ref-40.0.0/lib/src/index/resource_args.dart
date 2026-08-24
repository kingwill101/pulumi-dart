// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data.dart';

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<Data> data;
  final pulumi.Input<Data?>? optionalData;

  /// Creates a new [ResourceArgs].
  /// [data] Required.
  /// [optionalData] Optional.
  const ResourceArgs({
    required this.data,
    this.optionalData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': pulumi.Input.mapInputValue<Data, Map<String, dynamic>>(data, (value) => value.toMap()),
      'optionalData': ?pulumi.Input.mapOptionalInputValue<Data, Map<String, dynamic>>(optionalData, (value) => value.toMap()),
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      data: pulumi.Input.fromValue(Data.fromMap((map['data']! as Map).cast<String, dynamic>())),
      optionalData: (() { final guardedValue = map['optionalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Data.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
