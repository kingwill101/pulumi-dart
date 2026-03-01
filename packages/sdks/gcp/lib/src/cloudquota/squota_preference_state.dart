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
    pulumi.Output<String>? contactEmail,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? dimensions,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? ignoreSafetyChecks,
    pulumi.Output<String>? justification,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<SQuotaPreferenceQuotaConfig>? quotaConfig,
    pulumi.Output<String>? quotaId,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? service,
    pulumi.Output<String>? updateTime,
  }) :
      contactEmail = pulumi.Input.asOptionalInput<String>(contactEmail),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dimensions = pulumi.Input.asOptionalInput<Map<String, String>>(dimensions),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      ignoreSafetyChecks = pulumi.Input.asOptionalInput<String>(ignoreSafetyChecks),
      justification = pulumi.Input.asOptionalInput<String>(justification),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      quotaConfig = pulumi.Input.asOptionalInput<SQuotaPreferenceQuotaConfig>(quotaConfig),
      quotaId = pulumi.Input.asOptionalInput<String>(quotaId),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      service = pulumi.Input.asOptionalInput<String>(service),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      contactEmail: map['contactEmail'] == null ? null : pulumi.Output.create<String>(map['contactEmail'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['dimensions'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      ignoreSafetyChecks: map['ignoreSafetyChecks'] == null ? null : pulumi.Output.create<String>(map['ignoreSafetyChecks'] as String),
      justification: map['justification'] == null ? null : pulumi.Output.create<String>(map['justification'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      quotaConfig: map['quotaConfig'] == null ? null : pulumi.Output.create<SQuotaPreferenceQuotaConfig>(SQuotaPreferenceQuotaConfig.fromMap((map['quotaConfig'] as Map).cast<String, dynamic>())),
      quotaId: map['quotaId'] == null ? null : pulumi.Output.create<String>(map['quotaId'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

