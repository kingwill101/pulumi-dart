// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_handles_key_handle.dart';

/// Result data returned by getKeyHandles.
class GetKeyHandlesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetKeyHandlesKeyHandle> keyHandles;
  /// The location of the KMS Key and KeyHandle.
  final String location;
  /// The identifier of the project where KMS KeyHandle is created.
  final String? project;
  /// Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  final String resourceTypeSelector;

  /// Creates a new [GetKeyHandlesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyHandles] Required.
  /// [location] The location of the KMS Key and KeyHandle.
  /// [project] The identifier of the project where KMS KeyHandle is created.
  /// [resourceTypeSelector] Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  const GetKeyHandlesResult({
    required this.id,
    required this.keyHandles,
    required this.location,
    this.project,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyHandles': pulumi.Input.encodeList<GetKeyHandlesKeyHandle, Map<String, dynamic>>(keyHandles, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'resourceTypeSelector': resourceTypeSelector,
    };
  }

  factory GetKeyHandlesResult.fromMap(Map<String, dynamic> map) {
    return GetKeyHandlesResult(
      id: map['id'] as String,
      keyHandles: pulumi.Input.decodeList<GetKeyHandlesKeyHandle>(map['keyHandles']!, (value) => GetKeyHandlesKeyHandle.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTypeSelector: map['resourceTypeSelector'] as String,
    );
  }
}

