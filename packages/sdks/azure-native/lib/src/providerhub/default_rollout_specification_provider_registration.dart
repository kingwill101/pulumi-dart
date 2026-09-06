// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_registration_properties.dart';

/// The provider registration.
class DefaultRolloutSpecificationProviderRegistration {
  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<dynamic>? kind;
  final pulumi.Input<ProviderRegistrationProperties?>? properties;

  /// Creates a new [DefaultRolloutSpecificationProviderRegistration].
  /// [kind] Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  DefaultRolloutSpecificationProviderRegistration({
    pulumi.Input<dynamic>? kind,
    this.properties,
  }) : kind = kind ?? pulumi.Input.fromValue('Managed');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProviderRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory DefaultRolloutSpecificationProviderRegistration.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationProviderRegistration(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderRegistrationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
