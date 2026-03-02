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
  DefaultRolloutPropertiesSpecification({
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
      autoProvisionConfig: map['autoProvisionConfig'] == null ? null : (DefaultRolloutSpecificationAutoProvisionConfig.fromMap((map['autoProvisionConfig']! as Map).cast<String, dynamic>())).input(),
      canary: map['canary'] == null ? null : (DefaultRolloutSpecificationCanary.fromMap((map['canary']! as Map).cast<String, dynamic>())).input(),
      expeditedRollout: map['expeditedRollout'] == null ? null : (DefaultRolloutSpecificationExpeditedRollout.fromMap((map['expeditedRollout']! as Map).cast<String, dynamic>())).input(),
      highTraffic: map['highTraffic'] == null ? null : (DefaultRolloutSpecificationHighTraffic.fromMap((map['highTraffic']! as Map).cast<String, dynamic>())).input(),
      lowTraffic: map['lowTraffic'] == null ? null : (DefaultRolloutSpecificationLowTraffic.fromMap((map['lowTraffic']! as Map).cast<String, dynamic>())).input(),
      mediumTraffic: map['mediumTraffic'] == null ? null : (DefaultRolloutSpecificationMediumTraffic.fromMap((map['mediumTraffic']! as Map).cast<String, dynamic>())).input(),
      providerRegistration: map['providerRegistration'] == null ? null : (DefaultRolloutSpecificationProviderRegistration.fromMap((map['providerRegistration']! as Map).cast<String, dynamic>())).input(),
      resourceTypeRegistrations: map['resourceTypeRegistrations'] == null ? null : (pulumi.Input.decodeList<ResourceTypeRegistration>(map['resourceTypeRegistrations']!, (value) => ResourceTypeRegistration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restOfTheWorldGroupOne: map['restOfTheWorldGroupOne'] == null ? null : (DefaultRolloutSpecificationRestOfTheWorldGroupOne.fromMap((map['restOfTheWorldGroupOne']! as Map).cast<String, dynamic>())).input(),
      restOfTheWorldGroupTwo: map['restOfTheWorldGroupTwo'] == null ? null : (DefaultRolloutSpecificationRestOfTheWorldGroupTwo.fromMap((map['restOfTheWorldGroupTwo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

