// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceAcceleratorsFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one.
  final pulumi.Input<bool>? all;
  /// Filter the accelerators by this key. This may be one of `id`, `name`, `slug`, `status`, `createdAt`.
  final pulumi.Input<String> key;
  /// One of `exact` (default), `re`, or `substring`.
  final pulumi.Input<String>? matchBy;
  /// A list of values to match against the `key` field.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetDedicatedInferenceAcceleratorsFilter].
  /// [all] Set to `true` to require that a field match all of the `values` instead of just one.
  /// [key] Filter the accelerators by this key. This may be one of `id`, `name`, `slug`, `status`, `createdAt`.
  /// [matchBy] One of `exact` (default), `re`, or `substring`.
  /// [values] A list of values to match against the `key` field.
  const GetDedicatedInferenceAcceleratorsFilter({
    this.all,
    required this.key,
    this.matchBy,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'key': key,
      'matchBy': ?matchBy,
      'values': values,
    };
  }

  factory GetDedicatedInferenceAcceleratorsFilter.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceAcceleratorsFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      matchBy: (() { final guardedValue = map['matchBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
