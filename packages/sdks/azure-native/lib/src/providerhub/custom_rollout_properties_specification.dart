// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_specification_auto_provision_config.dart';
import 'custom_rollout_specification_canary.dart';
import 'custom_rollout_specification_provider_registration.dart';
import 'resource_type_registration.dart';

/// The specification.
class CustomRolloutPropertiesSpecification {
  /// The auto provisioning configuration.
  final pulumi.Input<CustomRolloutSpecificationAutoProvisionConfig>? autoProvisionConfig;
  /// The canary region configuration.
  final pulumi.Input<CustomRolloutSpecificationCanary>? canary;
  /// The provider registration.
  final pulumi.Input<CustomRolloutSpecificationProviderRegistration>? providerRegistration;
  /// Whether refreshing subscription registration is enabled or disabled.
  final pulumi.Input<bool>? refreshSubscriptionRegistration;
  /// The list of ARM regions scoped for the release.
  final pulumi.Input<List<String>>? releaseScopes;
  /// The resource type registrations.
  final pulumi.Input<List<ResourceTypeRegistration>>? resourceTypeRegistrations;
  /// Whether release scope validation should be skipped.
  final pulumi.Input<bool>? skipReleaseScopeValidation;

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
      'autoProvisionConfig': ?pulumi.Input.mapOptionalInputValue<CustomRolloutSpecificationAutoProvisionConfig, Map<String, dynamic>>(autoProvisionConfig, (value) => value.toMap()),
      'canary': ?pulumi.Input.mapOptionalInputValue<CustomRolloutSpecificationCanary, Map<String, dynamic>>(canary, (value) => value.toMap()),
      'providerRegistration': ?pulumi.Input.mapOptionalInputValue<CustomRolloutSpecificationProviderRegistration, Map<String, dynamic>>(providerRegistration, (value) => value.toMap()),
      'refreshSubscriptionRegistration': ?refreshSubscriptionRegistration,
      'releaseScopes': ?releaseScopes,
      'resourceTypeRegistrations': ?pulumi.Input.mapOptionalInputValue<List<ResourceTypeRegistration>, List<Map<String, dynamic>>>(resourceTypeRegistrations, (value) => pulumi.Input.encodeList<ResourceTypeRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skipReleaseScopeValidation': ?skipReleaseScopeValidation,
    };
  }

  factory CustomRolloutPropertiesSpecification.fromMap(Map<String, dynamic> map) {
    return CustomRolloutPropertiesSpecification(
      autoProvisionConfig: map['autoProvisionConfig'] == null ? null : (CustomRolloutSpecificationAutoProvisionConfig.fromMap((map['autoProvisionConfig']! as Map).cast<String, dynamic>())).input(),
      canary: map['canary'] == null ? null : (CustomRolloutSpecificationCanary.fromMap((map['canary']! as Map).cast<String, dynamic>())).input(),
      providerRegistration: map['providerRegistration'] == null ? null : (CustomRolloutSpecificationProviderRegistration.fromMap((map['providerRegistration']! as Map).cast<String, dynamic>())).input(),
      refreshSubscriptionRegistration: map['refreshSubscriptionRegistration'] == null ? null : (map['refreshSubscriptionRegistration']! as bool).input(),
      releaseScopes: map['releaseScopes'] == null ? null : ((map['releaseScopes']! as List).cast<String>()).input(),
      resourceTypeRegistrations: map['resourceTypeRegistrations'] == null ? null : (pulumi.Input.decodeList<ResourceTypeRegistration>(map['resourceTypeRegistrations']!, (value) => ResourceTypeRegistration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      skipReleaseScopeValidation: map['skipReleaseScopeValidation'] == null ? null : (map['skipReleaseScopeValidation']! as bool).input(),
    );
  }
}

