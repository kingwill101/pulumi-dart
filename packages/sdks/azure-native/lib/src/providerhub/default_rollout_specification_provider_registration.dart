// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_registration_properties.dart';

/// The provider registration.
class DefaultRolloutSpecificationProviderRegistration {
  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  final pulumi.Input<ProviderRegistrationProperties>? properties;

  /// Creates a new [DefaultRolloutSpecificationProviderRegistration].
  /// [kind] Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  DefaultRolloutSpecificationProviderRegistration({
    this.kind,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProviderRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory DefaultRolloutSpecificationProviderRegistration.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationProviderRegistration(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      properties: map['properties'] == null ? null : (ProviderRegistrationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

