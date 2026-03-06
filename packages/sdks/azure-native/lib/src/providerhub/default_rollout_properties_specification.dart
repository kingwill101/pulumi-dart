// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_specification_auto_provision_config.dart';
import 'default_rollout_specification_canary.dart';
import 'default_rollout_specification_expedited_rollout.dart';
import 'default_rollout_specification_high_traffic.dart';
import 'default_rollout_specification_low_traffic.dart';
import 'default_rollout_specification_medium_traffic.dart';
import 'default_rollout_specification_provider_registration.dart';
import 'default_rollout_specification_rest_of_the_world_group_one.dart';
import 'default_rollout_specification_rest_of_the_world_group_two.dart';
import 'resource_type_registration.dart';

/// The default rollout specification.
class DefaultRolloutPropertiesSpecification {
  /// The auto provisioning config.
  final pulumi.Input<DefaultRolloutSpecificationAutoProvisionConfig>? autoProvisionConfig;
  /// The canary traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationCanary>? canary;
  /// The expedited rollout definition.
  final pulumi.Input<DefaultRolloutSpecificationExpeditedRollout>? expeditedRollout;
  /// The high traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationHighTraffic>? highTraffic;
  /// The low traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationLowTraffic>? lowTraffic;
  /// The medium traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationMediumTraffic>? mediumTraffic;
  /// The provider registration.
  final pulumi.Input<DefaultRolloutSpecificationProviderRegistration>? providerRegistration;
  /// The resource type registrations.
  final pulumi.Input<List<ResourceTypeRegistration>>? resourceTypeRegistrations;
  /// The rest of the world group one region configuration.
  final pulumi.Input<DefaultRolloutSpecificationRestOfTheWorldGroupOne>? restOfTheWorldGroupOne;
  /// The rest of the world group two region configuration.
  final pulumi.Input<DefaultRolloutSpecificationRestOfTheWorldGroupTwo>? restOfTheWorldGroupTwo;

  /// Creates a new [DefaultRolloutPropertiesSpecification].
  /// [autoProvisionConfig] The auto provisioning config.
  /// [canary] The canary traffic region configuration.
  /// [expeditedRollout] The expedited rollout definition.
  /// [highTraffic] The high traffic region configuration.
  /// [lowTraffic] The low traffic region configuration.
  /// [mediumTraffic] The medium traffic region configuration.
  /// [providerRegistration] The provider registration.
  /// [resourceTypeRegistrations] The resource type registrations.
  /// [restOfTheWorldGroupOne] The rest of the world group one region configuration.
  /// [restOfTheWorldGroupTwo] The rest of the world group two region configuration.
  const DefaultRolloutPropertiesSpecification({
    this.autoProvisionConfig,
    this.canary,
    this.expeditedRollout,
    this.highTraffic,
    this.lowTraffic,
    this.mediumTraffic,
    this.providerRegistration,
    this.resourceTypeRegistrations,
    this.restOfTheWorldGroupOne,
    this.restOfTheWorldGroupTwo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisionConfig': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationAutoProvisionConfig, Map<String, dynamic>>(autoProvisionConfig, (value) => value.toMap()),
      'canary': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationCanary, Map<String, dynamic>>(canary, (value) => value.toMap()),
      'expeditedRollout': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationExpeditedRollout, Map<String, dynamic>>(expeditedRollout, (value) => value.toMap()),
      'highTraffic': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationHighTraffic, Map<String, dynamic>>(highTraffic, (value) => value.toMap()),
      'lowTraffic': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationLowTraffic, Map<String, dynamic>>(lowTraffic, (value) => value.toMap()),
      'mediumTraffic': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationMediumTraffic, Map<String, dynamic>>(mediumTraffic, (value) => value.toMap()),
      'providerRegistration': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationProviderRegistration, Map<String, dynamic>>(providerRegistration, (value) => value.toMap()),
      'resourceTypeRegistrations': ?pulumi.Input.mapOptionalInputValue<List<ResourceTypeRegistration>, List<Map<String, dynamic>>>(resourceTypeRegistrations, (value) => pulumi.Input.encodeList<ResourceTypeRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restOfTheWorldGroupOne': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationRestOfTheWorldGroupOne, Map<String, dynamic>>(restOfTheWorldGroupOne, (value) => value.toMap()),
      'restOfTheWorldGroupTwo': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationRestOfTheWorldGroupTwo, Map<String, dynamic>>(restOfTheWorldGroupTwo, (value) => value.toMap()),
    };
  }

  factory DefaultRolloutPropertiesSpecification.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesSpecification(
      autoProvisionConfig: (() { final guardedValue = map['autoProvisionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationAutoProvisionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canary: (() { final guardedValue = map['canary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationCanary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expeditedRollout: (() { final guardedValue = map['expeditedRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationExpeditedRollout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      highTraffic: (() { final guardedValue = map['highTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationHighTraffic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lowTraffic: (() { final guardedValue = map['lowTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationLowTraffic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediumTraffic: (() { final guardedValue = map['mediumTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationMediumTraffic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerRegistration: (() { final guardedValue = map['providerRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationProviderRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceTypeRegistrations: (() { final guardedValue = map['resourceTypeRegistrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceTypeRegistration>(guardedValue, (value) => ResourceTypeRegistration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restOfTheWorldGroupOne: (() { final guardedValue = map['restOfTheWorldGroupOne']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationRestOfTheWorldGroupOne.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restOfTheWorldGroupTwo: (() { final guardedValue = map['restOfTheWorldGroupTwo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationRestOfTheWorldGroupTwo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

