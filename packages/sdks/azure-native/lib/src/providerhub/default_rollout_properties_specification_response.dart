// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_specification_auto_provision_config_response.dart';
import 'default_rollout_specification_canary_response.dart';
import 'default_rollout_specification_expedited_rollout_response.dart';
import 'default_rollout_specification_high_traffic_response.dart';
import 'default_rollout_specification_low_traffic_response.dart';
import 'default_rollout_specification_medium_traffic_response.dart';
import 'default_rollout_specification_provider_registration_response.dart';
import 'default_rollout_specification_rest_of_the_world_group_one_response.dart';
import 'default_rollout_specification_rest_of_the_world_group_two_response.dart';
import 'resource_type_registration_response.dart';

/// The default rollout specification.
class DefaultRolloutPropertiesSpecificationResponse {
  /// The auto provisioning config.
  final DefaultRolloutSpecificationAutoProvisionConfigResponse? autoProvisionConfig;
  /// The canary traffic region configuration.
  final DefaultRolloutSpecificationCanaryResponse? canary;
  /// The expedited rollout definition.
  final DefaultRolloutSpecificationExpeditedRolloutResponse? expeditedRollout;
  /// The high traffic region configuration.
  final DefaultRolloutSpecificationHighTrafficResponse? highTraffic;
  /// The low traffic region configuration.
  final DefaultRolloutSpecificationLowTrafficResponse? lowTraffic;
  /// The medium traffic region configuration.
  final DefaultRolloutSpecificationMediumTrafficResponse? mediumTraffic;
  /// The provider registration.
  final DefaultRolloutSpecificationProviderRegistrationResponse? providerRegistration;
  /// The resource type registrations.
  final List<ResourceTypeRegistrationResponse>? resourceTypeRegistrations;
  /// The rest of the world group one region configuration.
  final DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse? restOfTheWorldGroupOne;
  /// The rest of the world group two region configuration.
  final DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse? restOfTheWorldGroupTwo;

  /// Creates a new [DefaultRolloutPropertiesSpecificationResponse].
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
  DefaultRolloutPropertiesSpecificationResponse({
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
      'resourceTypeRegistrations': ?resourceTypeRegistrations == null ? null : pulumi.Input.encodeList<ResourceTypeRegistrationResponse, Map<String, dynamic>>(resourceTypeRegistrations!, (value) => value.toMap()),
      'restOfTheWorldGroupOne': ?restOfTheWorldGroupOne == null ? null : restOfTheWorldGroupOne!.toMap(),
      'restOfTheWorldGroupTwo': ?restOfTheWorldGroupTwo == null ? null : restOfTheWorldGroupTwo!.toMap(),
    };
  }

  factory DefaultRolloutPropertiesSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesSpecificationResponse(
      autoProvisionConfig: map['autoProvisionConfig'] == null ? null : DefaultRolloutSpecificationAutoProvisionConfigResponse.fromMap((map['autoProvisionConfig'] as Map).cast<String, dynamic>()),
      canary: map['canary'] == null ? null : DefaultRolloutSpecificationCanaryResponse.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      expeditedRollout: map['expeditedRollout'] == null ? null : DefaultRolloutSpecificationExpeditedRolloutResponse.fromMap((map['expeditedRollout'] as Map).cast<String, dynamic>()),
      highTraffic: map['highTraffic'] == null ? null : DefaultRolloutSpecificationHighTrafficResponse.fromMap((map['highTraffic'] as Map).cast<String, dynamic>()),
      lowTraffic: map['lowTraffic'] == null ? null : DefaultRolloutSpecificationLowTrafficResponse.fromMap((map['lowTraffic'] as Map).cast<String, dynamic>()),
      mediumTraffic: map['mediumTraffic'] == null ? null : DefaultRolloutSpecificationMediumTrafficResponse.fromMap((map['mediumTraffic'] as Map).cast<String, dynamic>()),
      providerRegistration: map['providerRegistration'] == null ? null : DefaultRolloutSpecificationProviderRegistrationResponse.fromMap((map['providerRegistration'] as Map).cast<String, dynamic>()),
      resourceTypeRegistrations: map['resourceTypeRegistrations'] == null ? null : pulumi.Input.decodeList<ResourceTypeRegistrationResponse>(map['resourceTypeRegistrations'], (value) => ResourceTypeRegistrationResponse.fromMap((value as Map).cast<String, dynamic>())),
      restOfTheWorldGroupOne: map['restOfTheWorldGroupOne'] == null ? null : DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse.fromMap((map['restOfTheWorldGroupOne'] as Map).cast<String, dynamic>()),
      restOfTheWorldGroupTwo: map['restOfTheWorldGroupTwo'] == null ? null : DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse.fromMap((map['restOfTheWorldGroupTwo'] as Map).cast<String, dynamic>()),
    );
  }
}

