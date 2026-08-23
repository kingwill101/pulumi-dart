// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferencesFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one.
  final pulumi.Input<bool>? all;
  /// Filter the dedicated inference endpoints by this key. This may be one of `id`, `name`, `region`, `status`, `vpcUuid`, `publicEndpointFqdn`, `privateEndpointFqdn`, `createdAt`, `updatedAt`.
  final pulumi.Input<String> key;
  /// One of `exact` (default), `re`, or `substring`. For string-typed fields, the match mode controls how the filter is applied.
  final pulumi.Input<String>? matchBy;
  /// A list of values to match against the `key` field.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetDedicatedInferencesFilter].
  /// [all] Set to `true` to require that a field match all of the `values` instead of just one.
  /// [key] Filter the dedicated inference endpoints by this key. This may be one of `id`, `name`, `region`, `status`, `vpcUuid`, `publicEndpointFqdn`, `privateEndpointFqdn`, `createdAt`, `updatedAt`.
  /// [matchBy] One of `exact` (default), `re`, or `substring`. For string-typed fields, the match mode controls how the filter is applied.
  /// [values] A list of values to match against the `key` field.
  const GetDedicatedInferencesFilter({
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

  factory GetDedicatedInferencesFilter.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferencesFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      matchBy: (() { final guardedValue = map['matchBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
