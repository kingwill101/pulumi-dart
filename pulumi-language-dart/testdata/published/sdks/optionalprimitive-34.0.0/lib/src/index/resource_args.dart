// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<bool?>? boolean;
  final pulumi.Input<Map<String, bool>?>? booleanMap;
  final pulumi.Input<double?>? float;
  final pulumi.Input<int?>? integer;
  final pulumi.Input<List<double>?>? numberArray;
  final pulumi.Input<String?>? string_;

  /// Creates a new [ResourceArgs].
  /// [boolean] Optional.
  /// [booleanMap] Optional.
  /// [float] Optional.
  /// [integer] Optional.
  /// [numberArray] Optional.
  /// [string_] Optional.
  const ResourceArgs({
    this.boolean,
    this.booleanMap,
    this.float,
    this.integer,
    this.numberArray,
    this.string_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolean': ?boolean,
      'booleanMap': ?booleanMap,
      'float': ?float,
      'integer': ?integer,
      'numberArray': ?numberArray,
      'string': ?string_,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      boolean: (() { final guardedValue = map['boolean']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      booleanMap: (() { final guardedValue = map['booleanMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      float: (() { final guardedValue = map['float']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integer: (() { final guardedValue = map['integer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberArray: (() { final guardedValue = map['numberArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      string_: (() { final guardedValue = map['string']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
