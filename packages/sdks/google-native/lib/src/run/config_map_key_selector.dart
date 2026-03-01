// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference.dart';

/// Not supported by Cloud Run.
class ConfigMapKeySelector {
  /// Not supported by Cloud Run.
  final String key;
  /// Not supported by Cloud Run.
  final LocalObjectReference? localObjectReference;
  /// Not supported by Cloud Run.
  final String name;
  /// Not supported by Cloud Run.
  final bool? optional;

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
      'localObjectReference': ?localObjectReference == null ? null : localObjectReference!.toMap(),
      'name': name,
      'optional': ?optional,
    };
  }

  factory ConfigMapKeySelector.fromMap(Map<String, dynamic> map) {
    return ConfigMapKeySelector(
      key: map['key'] as String,
      localObjectReference: map['localObjectReference'] == null ? null : LocalObjectReference.fromMap((map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

