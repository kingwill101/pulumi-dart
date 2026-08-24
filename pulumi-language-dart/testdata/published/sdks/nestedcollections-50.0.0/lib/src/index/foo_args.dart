// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bar.dart';

/// {@template pulumi_index_foo_args_doc}
/// The set of arguments for Foo.
/// {@endtemplate}
/// {@macro pulumi_index_foo_args_doc}
class FooArgs {
  final pulumi.Input<List<List<List<Bar>>>?>? conditionSets;
  final pulumi.Input<Map<String, Map<String, Map<String, String>>>?>? privateEndpoint;

  /// Creates a new [FooArgs].
  /// [conditionSets] Optional.
  /// [privateEndpoint] Optional.
  const FooArgs({
    this.conditionSets,
    this.privateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionSets': ?pulumi.Input.mapOptionalInputValue<List<List<List<Bar>>>, List<List<List<Map<String, dynamic>>>>>(conditionSets, (value) => pulumi.Input.encodeList<List<List<Bar>>, List<List<Map<String, dynamic>>>>(value, (value) => pulumi.Input.encodeList<List<Bar>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<Bar, Map<String, dynamic>>(value, (value) => value.toMap())))),
      'privateEndpoint': ?privateEndpoint,
    };
  }

  factory FooArgs.fromMap(Map<String, dynamic> map) {
    return FooArgs(
      conditionSets: (() { final guardedValue = map['conditionSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<List<List<Bar>>>(guardedValue, (value) => pulumi.Input.decodeList<List<Bar>>(value, (value) => pulumi.Input.decodeList<Bar>(value, (value) => Bar.fromMap((value as Map).cast<String, dynamic>()))))); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Map<String, Map<String, String>>>(guardedValue, (value) => pulumi.Input.decodeMapValues<Map<String, String>>(value, (value) => (value as Map).cast<String, String>()))); })(),
    );
  }
}
