// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyHandlesKeyHandle {
  /// The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  final pulumi.Input<String> kmsKey;
  /// The name of the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyHandles/{keyHandleName}`.
  final pulumi.Input<String> name;
  /// The resource type by which to filter KeyHandle e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  ///
  /// - - -
  final pulumi.Input<String> resourceTypeSelector;

  /// Creates a new [GetKeyHandlesKeyHandle].
  /// [kmsKey] The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  /// [name] The name of the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyHandles/{keyHandleName}`.
  /// [resourceTypeSelector] The resource type by which to filter KeyHandle e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  const GetKeyHandlesKeyHandle({
    required this.kmsKey,
    required this.name,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
      'name': name,
      'resourceTypeSelector': resourceTypeSelector,
    };
  }

  factory GetKeyHandlesKeyHandle.fromMap(Map<String, dynamic> map) {
    return GetKeyHandlesKeyHandle(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceTypeSelector: pulumi.Input.fromValue(map['resourceTypeSelector'] as String),
    );
  }
}
