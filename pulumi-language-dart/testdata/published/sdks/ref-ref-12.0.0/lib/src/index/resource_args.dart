// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data.dart';

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<Data> data;

  /// Creates a new [ResourceArgs].
  /// [data] Required.
  const ResourceArgs({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': pulumi.Input.mapInputValue<Data, Map<String, dynamic>>(data, (value) => value.toMap()),
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      data: pulumi.Input.fromValue(Data.fromMap((map['data']! as Map).cast<String, dynamic>())),
    );
  }
}
