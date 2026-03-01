// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_specification_auto_provision_config.dart';
import 'custom_rollout_specification_canary.dart';
import 'custom_rollout_specification_provider_registration.dart';
import 'resource_type_registration.dart';

/// The specification.
class CustomRolloutPropertiesSpecification {
  /// The auto provisioning configuration.
  final CustomRolloutSpecificationAutoProvisionConfig? autoProvisionConfig;
  /// The canary region configuration.
  final CustomRolloutSpecificationCanary? canary;
  /// The provider registration.
  final CustomRolloutSpecificationProviderRegistration? providerRegistration;
  /// Whether refreshing subscription registration is enabled or disabled.
  final bool? refreshSubscriptionRegistration;
  /// The list of ARM regions scoped for the release.
  final List<String>? releaseScopes;
  /// The resource type registrations.
  final List<ResourceTypeRegistration>? resourceTypeRegistrations;
  /// Whether release scope validation should be skipped.
  final bool? skipReleaseScopeValidation;

  /// Creates a new [CustomRolloutPropertiesSpecification].
  /// [autoProvisionConfig] The auto provisioning configuration.
  /// [canary] The canary region configuration.
  /// [providerRegistration] The provider registration.
  /// [refreshSubscriptionRegistration] Whether refreshing subscription registration is enabled or disabled.
  /// [releaseScopes] The list of ARM regions scoped for the release.
  /// [resourceTypeRegistrations] The resource type registrations.
  /// [skipReleaseScopeValidation] Whether release scope validation should be skipped.
  CustomRolloutPropertiesSpecification({
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
      'autoProvisionConfig': ?autoProvisionConfig == null ? null : autoProvisionConfig!.toMap(),
      'canary': ?canary == null ? null : canary!.toMap(),
      'providerRegistration': ?providerRegistration == null ? null : providerRegistration!.toMap(),
      'refreshSubscriptionRegistration': ?refreshSubscriptionRegistration,
      'releaseScopes': ?releaseScopes,
      'resourceTypeRegistrations': ?resourceTypeRegistrations == null ? null : pulumi.Input.encodeList<ResourceTypeRegistration, Map<String, dynamic>>(resourceTypeRegistrations!, (value) => value.toMap()),
      'skipReleaseScopeValidation': ?skipReleaseScopeValidation,
    };
  }

  factory CustomRolloutPropertiesSpecification.fromMap(Map<String, dynamic> map) {
    return CustomRolloutPropertiesSpecification(
      autoProvisionConfig: map['autoProvisionConfig'] == null ? null : CustomRolloutSpecificationAutoProvisionConfig.fromMap((map['autoProvisionConfig'] as Map).cast<String, dynamic>()),
      canary: map['canary'] == null ? null : CustomRolloutSpecificationCanary.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      providerRegistration: map['providerRegistration'] == null ? null : CustomRolloutSpecificationProviderRegistration.fromMap((map['providerRegistration'] as Map).cast<String, dynamic>()),
      refreshSubscriptionRegistration: map['refreshSubscriptionRegistration'] == null ? null : map['refreshSubscriptionRegistration'] as bool,
      releaseScopes: map['releaseScopes'] == null ? null : (map['releaseScopes'] as List).cast<String>(),
      resourceTypeRegistrations: map['resourceTypeRegistrations'] == null ? null : pulumi.Input.decodeList<ResourceTypeRegistration>(map['resourceTypeRegistrations'], (value) => ResourceTypeRegistration.fromMap((value as Map).cast<String, dynamic>())),
      skipReleaseScopeValidation: map['skipReleaseScopeValidation'] == null ? null : map['skipReleaseScopeValidation'] as bool,
    );
  }
}

