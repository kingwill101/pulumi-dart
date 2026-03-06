// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_config_end_date.dart';
import 'license_config_start_date.dart';

/// Input properties used for looking up and filtering LicenseConfig resources.
class LicenseConfigState {
  /// Whether the license config should be auto renewed when it reaches the end date.
  final pulumi.Input<bool>? autoRenew;
  /// The planned end date.
  /// Structure is documented below.
  final pulumi.Input<LicenseConfigEndDate>? endDate;
  /// Whether the license config is for free trial.
  final pulumi.Input<bool>? freeTrial;
  /// The unique id of the license config.
  final pulumi.Input<String>? licenseConfigId;
  /// Number of licenses purchased.
  final pulumi.Input<int>? licenseCount;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the license config. Values are of the format
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The start date.
  /// Structure is documented below.
  final pulumi.Input<LicenseConfigStartDate>? startDate;
  /// Subscription term.
  /// Possible values are: `SUBSCRIPTION_TERM_UNSPECIFIED`, `SUBSCRIPTION_TERM_ONE_MONTH`, `SUBSCRIPTION_TERM_ONE_YEAR`, `SUBSCRIPTION_TERM_THREE_YEARS`, `SUBSCRIPTION_TERM_THREE_MONTHS`, `SUBSCRIPTION_TERM_FOURTEEN_DAYS`, `SUBSCRIPTION_TERM_CUSTOM`.
  final pulumi.Input<String>? subscriptionTerm;
  /// Subscription tier information for the license config.
  /// Possible values are: `SUBSCRIPTION_TIER_UNSPECIFIED`, `SUBSCRIPTION_TIER_SEARCH`, `SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT`, `SUBSCRIPTION_TIER_NOTEBOOK_LM`, `SUBSCRIPTION_TIER_FRONTLINE_WORKER`, `SUBSCRIPTION_TIER_AGENTSPACE_STARTER`, `SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS`, `SUBSCRIPTION_TIER_ENTERPRISE`, `SUBSCRIPTION_TIER_EDU`, `SUBSCRIPTION_TIER_EDU_PRO`.
  final pulumi.Input<String>? subscriptionTier;

  /// Creates a new [LicenseConfigState].
  /// [autoRenew] Whether the license config should be auto renewed when it reaches the end date.
  /// [endDate] The planned end date.
  /// [freeTrial] Whether the license config is for free trial.
  /// [licenseConfigId] The unique id of the license config.
  /// [licenseCount] Number of licenses purchased.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the license config. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [startDate] The start date.
  /// [subscriptionTerm] Subscription term.
  /// [subscriptionTier] Subscription tier information for the license config.
  const LicenseConfigState({
    this.autoRenew,
    this.endDate,
    this.freeTrial,
    this.licenseConfigId,
    this.licenseCount,
    this.location,
    this.name,
    this.project,
    this.startDate,
    this.subscriptionTerm,
    this.subscriptionTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'endDate': ?pulumi.Input.mapOptionalInputValue<LicenseConfigEndDate, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'freeTrial': ?freeTrial,
      'licenseConfigId': ?licenseConfigId,
      'licenseCount': ?licenseCount,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'startDate': ?pulumi.Input.mapOptionalInputValue<LicenseConfigStartDate, Map<String, dynamic>>(startDate, (value) => value.toMap()),
      'subscriptionTerm': ?subscriptionTerm,
      'subscriptionTier': ?subscriptionTier,
    };
  }

  factory LicenseConfigState.fromMap(Map<String, dynamic> map) {
    return LicenseConfigState(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseConfigEndDate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      freeTrial: (() { final guardedValue = map['freeTrial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseConfigId: (() { final guardedValue = map['licenseConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseCount: (() { final guardedValue = map['licenseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseConfigStartDate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionTerm: (() { final guardedValue = map['subscriptionTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionTier: (() { final guardedValue = map['subscriptionTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

