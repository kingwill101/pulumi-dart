// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference_response.dart';

/// Not supported by Cloud Run.
class ConfigMapKeySelectorResponse {
  /// Not supported by Cloud Run.
  final String key;
  /// Not supported by Cloud Run.
  final LocalObjectReferenceResponse localObjectReference;
  /// Not supported by Cloud Run.
  final String name;
  /// Not supported by Cloud Run.
  final bool optional;

  /// Creates a new [ConfigMapKeySelectorResponse].
  /// [key] Not supported by Cloud Run.
  /// [localObjectReference] Not supported by Cloud Run.
  /// [name] Not supported by Cloud Run.
  /// [optional] Not supported by Cloud Run.
  ConfigMapKeySelectorResponse({
    required this.key,
    required this.localObjectReference,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'localObjectReference': localObjectReference.toMap(),
      'name': name,
      'optional': optional,
    };
  }

  factory ConfigMapKeySelectorResponse.fromMap(Map<String, dynamic> map) {
    return ConfigMapKeySelectorResponse(
      key: map['key'] as String,
      localObjectReference: LocalObjectReferenceResponse.fromMap((map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      optional: map['optional'] as bool,
    );
  }
}

