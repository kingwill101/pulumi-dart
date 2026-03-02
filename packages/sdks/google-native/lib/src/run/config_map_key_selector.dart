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
  ConfigMapKeySelector({
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
      key: (map['key'] as String).input(),
      localObjectReference: map['localObjectReference'] == null ? null : (LocalObjectReference.fromMap((map['localObjectReference'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      optional: map['optional'] == null ? null : (map['optional'] as bool).input(),
    );
  }
}

