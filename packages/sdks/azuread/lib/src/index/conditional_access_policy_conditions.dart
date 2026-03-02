// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_applications.dart';
import 'conditional_access_policy_conditions_client_applications.dart';
import 'conditional_access_policy_conditions_devices.dart';
import 'conditional_access_policy_conditions_locations.dart';
import 'conditional_access_policy_conditions_platforms.dart';
import 'conditional_access_policy_conditions_users.dart';

class ConditionalAccessPolicyConditions {
  /// An `applications` block as documented below, which specifies applications and user actions included in and excluded from the policy.
  final pulumi.Input<ConditionalAccessPolicyConditionsApplications> applications;
  /// A list of authentication flow transfer methods included in the policy. Possible values are: `authenticationTransfer` and `deviceCodeFlow`.
  final pulumi.Input<List<String>>? authenticationFlowTransferMethods;
  /// A list of client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported` and `other`.
  final pulumi.Input<List<String>> clientAppTypes;
  /// An `client_applications` block as documented below, which specifies service principals included in and excluded from the policy.
  final pulumi.Input<ConditionalAccessPolicyConditionsClientApplications>? clientApplications;
  /// A `devices` block as documented below, which describes devices to be included in and excluded from the policy. A `devices` block can be added to an existing policy, but removing the `devices` block forces a new resource to be created.
  final pulumi.Input<ConditionalAccessPolicyConditionsDevices>? devices;
  /// The insider risk level in the policy. Possible values are: `minor`, `moderate`, `elevated`, `unknownFutureValue`.
  final pulumi.Input<String>? insiderRiskLevels;
  /// A `locations` block as documented below, which specifies locations included in and excluded from the policy.
  final pulumi.Input<ConditionalAccessPolicyConditionsLocations>? locations;
  /// A `platforms` block as documented below, which specifies platforms included in and excluded from the policy.
  final pulumi.Input<ConditionalAccessPolicyConditionsPlatforms>? platforms;
  /// A list of service principal sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.
  final pulumi.Input<List<String>>? servicePrincipalRiskLevels;
  /// A list of user sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  final pulumi.Input<List<String>>? signInRiskLevels;
  /// A list of user risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  final pulumi.Input<List<String>>? userRiskLevels;
  /// A `users` block as documented below, which specifies users, groups, and roles included in and excluded from the policy.
  final pulumi.Input<ConditionalAccessPolicyConditionsUsers> users;

  /// Creates a new [ConditionalAccessPolicyConditions].
  /// [applications] An `applications` block as documented below, which specifies applications and user actions included in and excluded from the policy.
  /// [authenticationFlowTransferMethods] A list of authentication flow transfer methods included in the policy. Possible values are: `authenticationTransfer` and `deviceCodeFlow`.
  /// [clientAppTypes] A list of client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported` and `other`.
  /// [clientApplications] An `client_applications` block as documented below, which specifies service principals included in and excluded from the policy.
  /// [devices] A `devices` block as documented below, which describes devices to be included in and excluded from the policy. A `devices` block can be added to an existing policy, but removing the `devices` block forces a new resource to be created.
  /// [insiderRiskLevels] The insider risk level in the policy. Possible values are: `minor`, `moderate`, `elevated`, `unknownFutureValue`.
  /// [locations] A `locations` block as documented below, which specifies locations included in and excluded from the policy.
  /// [platforms] A `platforms` block as documented below, which specifies platforms included in and excluded from the policy.
  /// [servicePrincipalRiskLevels] A list of service principal sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.
  /// [signInRiskLevels] A list of user sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  /// [userRiskLevels] A list of user risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  /// [users] A `users` block as documented below, which specifies users, groups, and roles included in and excluded from the policy.
  ConditionalAccessPolicyConditions({
    required this.applications,
    this.authenticationFlowTransferMethods,
    required this.clientAppTypes,
    this.clientApplications,
    this.devices,
    this.insiderRiskLevels,
    this.locations,
    this.platforms,
    this.servicePrincipalRiskLevels,
    this.signInRiskLevels,
    this.userRiskLevels,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': pulumi.Input.mapInputValue<ConditionalAccessPolicyConditionsApplications, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'authenticationFlowTransferMethods': ?authenticationFlowTransferMethods,
      'clientAppTypes': clientAppTypes,
      'clientApplications': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsClientApplications, Map<String, dynamic>>(clientApplications, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsDevices, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'insiderRiskLevels': ?insiderRiskLevels,
      'locations': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsLocations, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'platforms': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsPlatforms, Map<String, dynamic>>(platforms, (value) => value.toMap()),
      'servicePrincipalRiskLevels': ?servicePrincipalRiskLevels,
      'signInRiskLevels': ?signInRiskLevels,
      'userRiskLevels': ?userRiskLevels,
      'users': pulumi.Input.mapInputValue<ConditionalAccessPolicyConditionsUsers, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory ConditionalAccessPolicyConditions.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditions(
      applications: (ConditionalAccessPolicyConditionsApplications.fromMap((map['applications'] as Map).cast<String, dynamic>())).input(),
      authenticationFlowTransferMethods: map['authenticationFlowTransferMethods'] == null ? null : ((map['authenticationFlowTransferMethods'] as List).cast<String>()).input(),
      clientAppTypes: ((map['clientAppTypes'] as List).cast<String>()).input(),
      clientApplications: map['clientApplications'] == null ? null : (ConditionalAccessPolicyConditionsClientApplications.fromMap((map['clientApplications'] as Map).cast<String, dynamic>())).input(),
      devices: map['devices'] == null ? null : (ConditionalAccessPolicyConditionsDevices.fromMap((map['devices'] as Map).cast<String, dynamic>())).input(),
      insiderRiskLevels: map['insiderRiskLevels'] == null ? null : (map['insiderRiskLevels'] as String).input(),
      locations: map['locations'] == null ? null : (ConditionalAccessPolicyConditionsLocations.fromMap((map['locations'] as Map).cast<String, dynamic>())).input(),
      platforms: map['platforms'] == null ? null : (ConditionalAccessPolicyConditionsPlatforms.fromMap((map['platforms'] as Map).cast<String, dynamic>())).input(),
      servicePrincipalRiskLevels: map['servicePrincipalRiskLevels'] == null ? null : ((map['servicePrincipalRiskLevels'] as List).cast<String>()).input(),
      signInRiskLevels: map['signInRiskLevels'] == null ? null : ((map['signInRiskLevels'] as List).cast<String>()).input(),
      userRiskLevels: map['userRiskLevels'] == null ? null : ((map['userRiskLevels'] as List).cast<String>()).input(),
      users: (ConditionalAccessPolicyConditionsUsers.fromMap((map['users'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

