// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<bool?>? boolean;
  final pulumi.Input<double?>? float;
  final pulumi.Input<int?>? integer;
  final pulumi.Input<String?>? string_;

  /// Creates a new [ResourceArgs].
  /// [boolean] Optional.
  /// [float] Optional.
  /// [integer] Optional.
  /// [string_] Optional.
  ResourceArgs({
    pulumi.Input<bool?>? boolean,
    pulumi.Input<double?>? float,
    pulumi.Input<int?>? integer,
    pulumi.Input<String?>? string_,
  }) : boolean = boolean ?? pulumi.Input.fromValue(false), float = float ?? pulumi.Input.fromValue(0.5), integer = integer ?? pulumi.Input.fromValue(1), string_ = string_ ?? pulumi.Input.fromValue('default');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolean': ?boolean,
      'float': ?float,
      'integer': ?integer,
      'string': ?string_,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      boolean: (() { final guardedValue = map['boolean']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      float: (() { final guardedValue = map['float']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      integer: (() { final guardedValue = map['integer']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      string_: (() { final guardedValue = map['string']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
