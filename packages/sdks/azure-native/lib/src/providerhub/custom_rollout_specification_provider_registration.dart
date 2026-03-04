// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_registration_properties.dart';

/// The provider registration.
class CustomRolloutSpecificationProviderRegistration {
  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  final pulumi.Input<ProviderRegistrationProperties>? properties;

  /// Creates a new [CustomRolloutSpecificationProviderRegistration].
  /// [kind] Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  CustomRolloutSpecificationProviderRegistration({this.kind, this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderRegistrationProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory CustomRolloutSpecificationProviderRegistration.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomRolloutSpecificationProviderRegistration(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderRegistrationProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
