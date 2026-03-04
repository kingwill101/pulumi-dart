// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'squota_preference_quota_config.dart';

/// {@template pulumi_cloudquota_s_quota_preference_squota_preference_args_doc}
/// The set of arguments for SQuotaPreference.
/// {@endtemplate}
/// {@macro pulumi_cloudquota_s_quota_preference_squota_preference_args_doc}
class SQuotaPreferenceArgs {
  /// An email address that can be used for quota related communication between the Google Cloud and the user in case the Google Cloud needs further information to make a decision on whether the user preferred quota can be granted.
  /// The Google account for the email address must have quota update permission for the project, folder or organization this quota preference is for.
  final pulumi.Input<String>? contactEmail;

  /// The dimensions that this quota preference applies to. The key of the map entry is the name of a dimension, such as "region", "zone", "network_id", and the value of the map entry is the dimension value. If a dimension is missing from the map of dimensions, the quota preference applies to all the dimension values except for those that have other quota preferences configured for the specific value.
  /// NOTE: QuotaPreferences can only be applied across all values of "user" and "resource" dimension. Do not set values for "user" or "resource" in the dimension map.
  /// Example: `{"provider": "Foo Inc"}` where "provider" is a service specific dimension.
  final pulumi.Input<Map<String, String>>? dimensions;

  /// The list of quota safety checks to be ignored.
  /// Default value is `QUOTA_SAFETY_CHECK_UNSPECIFIED`.
  /// Possible values are: `QUOTA_SAFETY_CHECK_UNSPECIFIED`, `QUOTA_DECREASE_BELOW_USAGE`, `QUOTA_DECREASE_PERCENTAGE_TOO_HIGH`.
  final pulumi.Input<String>? ignoreSafetyChecks;

  /// The reason / justification for this quota preference.
  final pulumi.Input<String>? justification;

  /// The resource name of the quota preference. Required except in the CREATE requests.
  final pulumi.Input<String>? name;

  /// The parent of the quota preference. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number]".
  final pulumi.Input<String>? parent;

  /// The preferred quota configuration.
  /// Structure is documented below.
  final pulumi.Input<SQuotaPreferenceQuotaConfig> quotaConfig;

  /// The id of the quota to which the quota preference is applied. A quota id is unique in the service.
  /// Example: `CPUS-per-project-region`.
  final pulumi.Input<String>? quotaId;

  /// The name of the service to which the quota preference is applied.
  final pulumi.Input<String>? service;

  /// Creates a new [SQuotaPreferenceArgs].
  /// [contactEmail] An email address that can be used for quota related communication between the Google Cloud and the user in case the Google Cloud needs further information to make a decision on whether the user preferred quota can be granted.
  /// [dimensions] The dimensions that this quota preference applies to. The key of the map entry is the name of a dimension, such as "region", "zone", "network_id", and the value of the map entry is the dimension value. If a dimension is missing from the map of dimensions, the quota preference applies to all the dimension values except for those that have other quota preferences configured for the specific value.
  /// [ignoreSafetyChecks] The list of quota safety checks to be ignored.
  /// [justification] The reason / justification for this quota preference.
  /// [name] The resource name of the quota preference. Required except in the CREATE requests.
  /// [parent] The parent of the quota preference. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number]".
  /// [quotaConfig] The preferred quota configuration.
  /// [quotaId] The id of the quota to which the quota preference is applied. A quota id is unique in the service.
  /// [service] The name of the service to which the quota preference is applied.
  SQuotaPreferenceArgs({
    this.contactEmail,
    this.dimensions,
    this.ignoreSafetyChecks,
    this.justification,
    this.name,
    this.parent,
    required this.quotaConfig,
    this.quotaId,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactEmail': ?contactEmail,
      'dimensions': ?dimensions,
      'ignoreSafetyChecks': ?ignoreSafetyChecks,
      'justification': ?justification,
      'name': ?name,
      'parent': ?parent,
      'quotaConfig':
          pulumi.Input.mapInputValue<
            SQuotaPreferenceQuotaConfig,
            Map<String, dynamic>
          >(quotaConfig, (value) => value.toMap()),
      'quotaId': ?quotaId,
      'service': ?service,
    };
  }

  factory SQuotaPreferenceArgs.fromMap(Map<String, dynamic> map) {
    return SQuotaPreferenceArgs(
      contactEmail: (() {
        final guardedValue = map['contactEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      ignoreSafetyChecks: (() {
        final guardedValue = map['ignoreSafetyChecks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      justification: (() {
        final guardedValue = map['justification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaConfig: pulumi.Input.fromValue(
        SQuotaPreferenceQuotaConfig.fromMap(
          (map['quotaConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      quotaId: (() {
        final guardedValue = map['quotaId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
