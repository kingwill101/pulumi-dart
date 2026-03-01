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
  final DefaultRolloutSpecificationAutoProvisionConfig? autoProvisionConfig;
  /// The canary traffic region configuration.
  final DefaultRolloutSpecificationCanary? canary;
  /// The expedited rollout definition.
  final DefaultRolloutSpecificationExpeditedRollout? expeditedRollout;
  /// The high traffic region configuration.
  final DefaultRolloutSpecificationHighTraffic? highTraffic;
  /// The low traffic region configuration.
  final DefaultRolloutSpecificationLowTraffic? lowTraffic;
  /// The medium traffic region configuration.
  final DefaultRolloutSpecificationMediumTraffic? mediumTraffic;
  /// The provider registration.
  final DefaultRolloutSpecificationProviderRegistration? providerRegistration;
  /// The resource type registrations.
  final List<ResourceTypeRegistration>? resourceTypeRegistrations;
  /// The rest of the world group one region configuration.
  final DefaultRolloutSpecificationRestOfTheWorldGroupOne? restOfTheWorldGroupOne;
  /// The rest of the world group two region configuration.
  final DefaultRolloutSpecificationRestOfTheWorldGroupTwo? restOfTheWorldGroupTwo;

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
      'autoProvisionConfig': ?autoProvisionConfig == null ? null : autoProvisionConfig!.toMap(),
      'canary': ?canary == null ? null : canary!.toMap(),
      'expeditedRollout': ?expeditedRollout == null ? null : expeditedRollout!.toMap(),
      'highTraffic': ?highTraffic == null ? null : highTraffic!.toMap(),
      'lowTraffic': ?lowTraffic == null ? null : lowTraffic!.toMap(),
      'mediumTraffic': ?mediumTraffic == null ? null : mediumTraffic!.toMap(),
      'providerRegistration': ?providerRegistration == null ? null : providerRegistration!.toMap(),
      'resourceTypeRegistrations': ?resourceTypeRegistrations == null ? null : pulumi.Input.encodeList<ResourceTypeRegistration, Map<String, dynamic>>(resourceTypeRegistrations!, (value) => value.toMap()),
      'restOfTheWorldGroupOne': ?restOfTheWorldGroupOne == null ? null : restOfTheWorldGroupOne!.toMap(),
      'restOfTheWorldGroupTwo': ?restOfTheWorldGroupTwo == null ? null : restOfTheWorldGroupTwo!.toMap(),
    };
  }

  factory DefaultRolloutPropertiesSpecification.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesSpecification(
      autoProvisionConfig: map['autoProvisionConfig'] == null ? null : DefaultRolloutSpecificationAutoProvisionConfig.fromMap((map['autoProvisionConfig'] as Map).cast<String, dynamic>()),
      canary: map['canary'] == null ? null : DefaultRolloutSpecificationCanary.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      expeditedRollout: map['expeditedRollout'] == null ? null : DefaultRolloutSpecificationExpeditedRollout.fromMap((map['expeditedRollout'] as Map).cast<String, dynamic>()),
      highTraffic: map['highTraffic'] == null ? null : DefaultRolloutSpecificationHighTraffic.fromMap((map['highTraffic'] as Map).cast<String, dynamic>()),
      lowTraffic: map['lowTraffic'] == null ? null : DefaultRolloutSpecificationLowTraffic.fromMap((map['lowTraffic'] as Map).cast<String, dynamic>()),
      mediumTraffic: map['mediumTraffic'] == null ? null : DefaultRolloutSpecificationMediumTraffic.fromMap((map['mediumTraffic'] as Map).cast<String, dynamic>()),
      providerRegistration: map['providerRegistration'] == null ? null : DefaultRolloutSpecificationProviderRegistration.fromMap((map['providerRegistration'] as Map).cast<String, dynamic>()),
      resourceTypeRegistrations: map['resourceTypeRegistrations'] == null ? null : pulumi.Input.decodeList<ResourceTypeRegistration>(map['resourceTypeRegistrations'], (value) => ResourceTypeRegistration.fromMap((value as Map).cast<String, dynamic>())),
      restOfTheWorldGroupOne: map['restOfTheWorldGroupOne'] == null ? null : DefaultRolloutSpecificationRestOfTheWorldGroupOne.fromMap((map['restOfTheWorldGroupOne'] as Map).cast<String, dynamic>()),
      restOfTheWorldGroupTwo: map['restOfTheWorldGroupTwo'] == null ? null : DefaultRolloutSpecificationRestOfTheWorldGroupTwo.fromMap((map['restOfTheWorldGroupTwo'] as Map).cast<String, dynamic>()),
    );
  }
}

