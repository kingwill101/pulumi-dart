// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_registration_properties.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
class ResourceTypeRegistration {
  /// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  final pulumi.Input<ResourceTypeRegistrationProperties>? properties;

  /// Creates a new [ResourceTypeRegistration].
  /// [kind] Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  ResourceTypeRegistration({this.kind, this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceTypeRegistrationProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistration.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistration(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceTypeRegistrationProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
