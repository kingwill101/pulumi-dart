// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'squota_preference_quota_config.dart';

/// Input properties used for looking up and filtering SQuotaPreference resources.
class SQuotaPreferenceState {
  /// An email address that can be used for quota related communication between the Google Cloud and the user in case the Google Cloud needs further information to make a decision on whether the user preferred quota can be granted.
  /// The Google account for the email address must have quota update permission for the project, folder or organization this quota preference is for.
  final pulumi.Input<String>? contactEmail;
  /// Create time stamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? createTime;
  /// The dimensions that this quota preference applies to. The key of the map entry is the name of a dimension, such as "region", "zone", "network_id", and the value of the map entry is the dimension value. If a dimension is missing from the map of dimensions, the quota preference applies to all the dimension values except for those that have other quota preferences configured for the specific value.
  /// NOTE: QuotaPreferences can only be applied across all values of "user" and "resource" dimension. Do not set values for "user" or "resource" in the dimension map.
  /// Example: `{"provider": "Foo Inc"}` where "provider" is a service specific dimension.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// The current etag of the quota preference. If an etag is provided on update and does not match the current server's etag of the quota preference, the request will be blocked and an ABORTED error will be returned. See https://google.aip.dev/134#etags for more details on etags.
  final pulumi.Input<String>? etag;
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
  final pulumi.Input<SQuotaPreferenceQuotaConfig>? quotaConfig;
  /// The id of the quota to which the quota preference is applied. A quota id is unique in the service.
  /// Example: `CPUS-per-project-region`.
  final pulumi.Input<String>? quotaId;
  /// Is the quota preference pending Google Cloud approval and fulfillment.
  final pulumi.Input<bool>? reconciling;
  /// The name of the service to which the quota preference is applied.
  final pulumi.Input<String>? service;
  /// Update time stamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SQuotaPreferenceState].
  /// [contactEmail] An email address that can be used for quota related communication between the Google Cloud and the user in case the Google Cloud needs further information to make a decision on whether the user preferred quota can be granted.
  /// [createTime] Create time stamp.
  /// [dimensions] The dimensions that this quota preference applies to. The key of the map entry is the name of a dimension, such as "region", "zone", "network_id", and the value of the map entry is the dimension value. If a dimension is missing from the map of dimensions, the quota preference applies to all the dimension values except for those that have other quota preferences configured for the specific value.
  /// [etag] The current etag of the quota preference. If an etag is provided on update and does not match the current server's etag of the quota preference, the request will be blocked and an ABORTED error will be returned. See https://google.aip.dev/134#etags for more details on etags.
  /// [ignoreSafetyChecks] The list of quota safety checks to be ignored.
  /// [justification] The reason / justification for this quota preference.
  /// [name] The resource name of the quota preference. Required except in the CREATE requests.
  /// [parent] The parent of the quota preference. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number]".
  /// [quotaConfig] The preferred quota configuration.
  /// [quotaId] The id of the quota to which the quota preference is applied. A quota id is unique in the service.
  /// [reconciling] Is the quota preference pending Google Cloud approval and fulfillment.
  /// [service] The name of the service to which the quota preference is applied.
  /// [updateTime] Update time stamp.
  SQuotaPreferenceState({
    this.contactEmail,
    this.createTime,
    this.dimensions,
    this.etag,
    this.ignoreSafetyChecks,
    this.justification,
    this.name,
    this.parent,
    this.quotaConfig,
    this.quotaId,
    this.reconciling,
    this.service,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactEmail': ?contactEmail,
      'createTime': ?createTime,
      'dimensions': ?dimensions,
      'etag': ?etag,
      'ignoreSafetyChecks': ?ignoreSafetyChecks,
      'justification': ?justification,
      'name': ?name,
      'parent': ?parent,
      'quotaConfig': ?pulumi.Input.mapOptionalInputValue<SQuotaPreferenceQuotaConfig, Map<String, dynamic>>(quotaConfig, (value) => value.toMap()),
      'quotaId': ?quotaId,
      'reconciling': ?reconciling,
      'service': ?service,
      'updateTime': ?updateTime,
    };
  }

  factory SQuotaPreferenceState.fromMap(Map<String, dynamic> map) {
    return SQuotaPreferenceState(
      contactEmail: map['contactEmail'] == null ? null : (map['contactEmail']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dimensions: map['dimensions'] == null ? null : ((map['dimensions']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      ignoreSafetyChecks: map['ignoreSafetyChecks'] == null ? null : (map['ignoreSafetyChecks']! as String).input(),
      justification: map['justification'] == null ? null : (map['justification']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      quotaConfig: map['quotaConfig'] == null ? null : (SQuotaPreferenceQuotaConfig.fromMap((map['quotaConfig']! as Map).cast<String, dynamic>())).input(),
      quotaId: map['quotaId'] == null ? null : (map['quotaId']! as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

