// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// Not supported by Cloud Run.
class ConfigMapKeySelector {
  /// Not supported by Cloud Run.
  final pulumi.Input<String> key;
  /// Not supported by Cloud Run.
  final pulumi.Input<LocalObjectReference>? localObjectReference;
  /// Not supported by Cloud Run.
  final pulumi.Input<String> name;
  /// Not supported by Cloud Run.
  final pulumi.Input<bool>? optional;

  /// Creates a new [ConfigMapKeySelector].
  /// [key] Not supported by Cloud Run.
  /// [localObjectReference] Not supported by Cloud Run.
  /// [name] Not supported by Cloud Run.
  /// [optional] Not supported by Cloud Run.
  const ConfigMapKeySelector({
    required this.key,
    this.localObjectReference,
    required this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'localObjectReference': ?pulumi.Input.mapOptionalInputValue<LocalObjectReference, Map<String, dynamic>>(localObjectReference, (value) => value.toMap()),
      'name': name,
      'optional': ?optional,
    };
  }

  factory ConfigMapKeySelector.fromMap(Map<String, dynamic> map) {
    return ConfigMapKeySelector(
      key: pulumi.Input.fromValue(map['key'] as String),
      localObjectReference: (() { final guardedValue = map['localObjectReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
