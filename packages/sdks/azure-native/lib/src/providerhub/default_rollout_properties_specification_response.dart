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
  final pulumi.Input<DefaultRolloutSpecificationAutoProvisionConfigResponse>? autoProvisionConfig;
  /// The canary traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationCanaryResponse>? canary;
  /// The expedited rollout definition.
  final pulumi.Input<DefaultRolloutSpecificationExpeditedRolloutResponse>? expeditedRollout;
  /// The high traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationHighTrafficResponse>? highTraffic;
  /// The low traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationLowTrafficResponse>? lowTraffic;
  /// The medium traffic region configuration.
  final pulumi.Input<DefaultRolloutSpecificationMediumTrafficResponse>? mediumTraffic;
  /// The provider registration.
  final pulumi.Input<DefaultRolloutSpecificationProviderRegistrationResponse>? providerRegistration;
  /// The resource type registrations.
  final pulumi.Input<List<ResourceTypeRegistrationResponse>>? resourceTypeRegistrations;
  /// The rest of the world group one region configuration.
  final pulumi.Input<DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse>? restOfTheWorldGroupOne;
  /// The rest of the world group two region configuration.
  final pulumi.Input<DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse>? restOfTheWorldGroupTwo;

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
  const DefaultRolloutPropertiesSpecificationResponse({
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
      'autoProvisionConfig': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationAutoProvisionConfigResponse, Map<String, dynamic>>(autoProvisionConfig, (value) => value.toMap()),
      'canary': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationCanaryResponse, Map<String, dynamic>>(canary, (value) => value.toMap()),
      'expeditedRollout': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationExpeditedRolloutResponse, Map<String, dynamic>>(expeditedRollout, (value) => value.toMap()),
      'highTraffic': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationHighTrafficResponse, Map<String, dynamic>>(highTraffic, (value) => value.toMap()),
      'lowTraffic': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationLowTrafficResponse, Map<String, dynamic>>(lowTraffic, (value) => value.toMap()),
      'mediumTraffic': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationMediumTrafficResponse, Map<String, dynamic>>(mediumTraffic, (value) => value.toMap()),
      'providerRegistration': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationProviderRegistrationResponse, Map<String, dynamic>>(providerRegistration, (value) => value.toMap()),
      'resourceTypeRegistrations': ?pulumi.Input.mapOptionalInputValue<List<ResourceTypeRegistrationResponse>, List<Map<String, dynamic>>>(resourceTypeRegistrations, (value) => pulumi.Input.encodeList<ResourceTypeRegistrationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restOfTheWorldGroupOne': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse, Map<String, dynamic>>(restOfTheWorldGroupOne, (value) => value.toMap()),
      'restOfTheWorldGroupTwo': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse, Map<String, dynamic>>(restOfTheWorldGroupTwo, (value) => value.toMap()),
    };
  }

  factory DefaultRolloutPropertiesSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesSpecificationResponse(
      autoProvisionConfig: (() { final guardedValue = map['autoProvisionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationAutoProvisionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canary: (() { final guardedValue = map['canary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationCanaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expeditedRollout: (() { final guardedValue = map['expeditedRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationExpeditedRolloutResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      highTraffic: (() { final guardedValue = map['highTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationHighTrafficResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lowTraffic: (() { final guardedValue = map['lowTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationLowTrafficResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediumTraffic: (() { final guardedValue = map['mediumTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationMediumTrafficResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerRegistration: (() { final guardedValue = map['providerRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationProviderRegistrationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceTypeRegistrations: (() { final guardedValue = map['resourceTypeRegistrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceTypeRegistrationResponse>(guardedValue, (value) => ResourceTypeRegistrationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restOfTheWorldGroupOne: (() { final guardedValue = map['restOfTheWorldGroupOne']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restOfTheWorldGroupTwo: (() { final guardedValue = map['restOfTheWorldGroupTwo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
