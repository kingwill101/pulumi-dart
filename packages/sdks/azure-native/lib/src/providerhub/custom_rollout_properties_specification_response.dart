// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_specification_auto_provision_config_response.dart';
import 'custom_rollout_specification_canary_response.dart';
import 'custom_rollout_specification_provider_registration_response.dart';
import 'resource_type_registration_response.dart';

/// The specification.
class CustomRolloutPropertiesSpecificationResponse {
  /// The auto provisioning configuration.
  final pulumi.Input<CustomRolloutSpecificationAutoProvisionConfigResponse>?
  autoProvisionConfig;

  /// The canary region configuration.
  final pulumi.Input<CustomRolloutSpecificationCanaryResponse>? canary;

  /// The provider registration.
  final pulumi.Input<CustomRolloutSpecificationProviderRegistrationResponse>?
  providerRegistration;

  /// Whether refreshing subscription registration is enabled or disabled.
  final pulumi.Input<bool>? refreshSubscriptionRegistration;

  /// The list of ARM regions scoped for the release.
  final pulumi.Input<List<String>>? releaseScopes;

  /// The resource type registrations.
  final pulumi.Input<List<ResourceTypeRegistrationResponse>>?
  resourceTypeRegistrations;

  /// Whether release scope validation should be skipped.
  final pulumi.Input<bool>? skipReleaseScopeValidation;

  /// Creates a new [CustomRolloutPropertiesSpecificationResponse].
  /// [autoProvisionConfig] The auto provisioning configuration.
  /// [canary] The canary region configuration.
  /// [providerRegistration] The provider registration.
  /// [refreshSubscriptionRegistration] Whether refreshing subscription registration is enabled or disabled.
  /// [releaseScopes] The list of ARM regions scoped for the release.
  /// [resourceTypeRegistrations] The resource type registrations.
  /// [skipReleaseScopeValidation] Whether release scope validation should be skipped.
  CustomRolloutPropertiesSpecificationResponse({
    this.autoProvisionConfig,
    this.canary,
    this.providerRegistration,
    this.refreshSubscriptionRegistration,
    this.releaseScopes,
    this.resourceTypeRegistrations,
    this.skipReleaseScopeValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CustomRolloutSpecificationAutoProvisionConfigResponse,
            Map<String, dynamic>
          >(autoProvisionConfig, (value) => value.toMap()),
      'canary':
          ?pulumi.Input.mapOptionalInputValue<
            CustomRolloutSpecificationCanaryResponse,
            Map<String, dynamic>
          >(canary, (value) => value.toMap()),
      'providerRegistration':
          ?pulumi.Input.mapOptionalInputValue<
            CustomRolloutSpecificationProviderRegistrationResponse,
            Map<String, dynamic>
          >(providerRegistration, (value) => value.toMap()),
      'refreshSubscriptionRegistration': ?refreshSubscriptionRegistration,
      'releaseScopes': ?releaseScopes,
      'resourceTypeRegistrations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceTypeRegistrationResponse>,
            List<Map<String, dynamic>>
          >(
            resourceTypeRegistrations,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceTypeRegistrationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'skipReleaseScopeValidation': ?skipReleaseScopeValidation,
    };
  }

  factory CustomRolloutPropertiesSpecificationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomRolloutPropertiesSpecificationResponse(
      autoProvisionConfig: (() {
        final guardedValue = map['autoProvisionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomRolloutSpecificationAutoProvisionConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      canary: (() {
        final guardedValue = map['canary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomRolloutSpecificationCanaryResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      providerRegistration: (() {
        final guardedValue = map['providerRegistration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomRolloutSpecificationProviderRegistrationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      refreshSubscriptionRegistration: (() {
        final guardedValue = map['refreshSubscriptionRegistration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      releaseScopes: (() {
        final guardedValue = map['releaseScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceTypeRegistrations: (() {
        final guardedValue = map['resourceTypeRegistrations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceTypeRegistrationResponse>(
            guardedValue,
            (value) => ResourceTypeRegistrationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      skipReleaseScopeValidation: (() {
        final guardedValue = map['skipReleaseScopeValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
