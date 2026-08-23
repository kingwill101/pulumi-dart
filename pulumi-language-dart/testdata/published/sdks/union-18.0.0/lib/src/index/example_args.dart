// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_example_args_doc}
/// The set of arguments for Example.
/// {@endtemplate}
/// {@macro pulumi_index_example_args_doc}
class ExampleArgs {
  final pulumi.Input<Map<String, Map<String, dynamic>>?>? mapMapUnionProperty;
  final pulumi.Input<List<dynamic>?>? stringEnumUnionListProperty;
  final pulumi.Input<dynamic>? stringOrIntegerProperty;
  final pulumi.Input<dynamic>? typedEnumProperty;

  /// Creates a new [ExampleArgs].
  /// [mapMapUnionProperty] Optional.
  /// [stringEnumUnionListProperty] Optional.
  /// [stringOrIntegerProperty] Optional.
  /// [typedEnumProperty] Optional.
  const ExampleArgs({
    this.mapMapUnionProperty,
    this.stringEnumUnionListProperty,
    this.stringOrIntegerProperty,
    this.typedEnumProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapMapUnionProperty': ?mapMapUnionProperty,
      'stringEnumUnionListProperty': ?stringEnumUnionListProperty,
      'stringOrIntegerProperty': ?stringOrIntegerProperty,
      'typedEnumProperty': ?typedEnumProperty,
    };
  }

  factory ExampleArgs.fromMap(Map<String, dynamic> map) {
    return ExampleArgs(
      mapMapUnionProperty: (() { final guardedValue = map['mapMapUnionProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Map<String, dynamic>>(guardedValue, (value) => (value as Map).cast<String, dynamic>())); })(),
      stringEnumUnionListProperty: (() { final guardedValue = map['stringEnumUnionListProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      stringOrIntegerProperty: (() { final guardedValue = map['stringOrIntegerProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      typedEnumProperty: (() { final guardedValue = map['typedEnumProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
