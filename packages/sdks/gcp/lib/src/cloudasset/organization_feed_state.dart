// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_feed_condition.dart';
import 'organization_feed_feed_output_config.dart';

/// Input properties used for looking up and filtering OrganizationFeed resources.
class OrganizationFeedState {
  /// A list of the full names of the assets to receive updates. You must specify either or both of
  /// assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
  /// exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
  /// See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info.
  final pulumi.Input<List<String>>? assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
  /// the feed. For example: "compute.googleapis.com/Disk"
  /// See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
  /// supported asset types.
  final pulumi.Input<List<String>>? assetTypes;

  /// The project whose identity will be used when sending messages to the
  /// destination pubsub topic. It also specifies the project for API
  /// enablement check, quota, and billing.
  final pulumi.Input<String>? billingProject;

  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  final pulumi.Input<OrganizationFeedCondition>? condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  final pulumi.Input<String>? contentType;

  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  final pulumi.Input<String>? feedId;

  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  final pulumi.Input<OrganizationFeedFeedOutputConfig>? feedOutputConfig;

  /// The format will be organizations/{organization_number}/feeds/{client-assigned_feed_identifier}.
  final pulumi.Input<String>? name;

  /// The organization this feed should be created in.
  final pulumi.Input<String>? orgId;

  /// Creates a new [OrganizationFeedState].
  /// [assetNames] A list of the full names of the assets to receive updates. You must specify either or both of
  /// [assetTypes] A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// [billingProject] The project whose identity will be used when sending messages to the
  /// [condition] A condition which determines whether an asset update should be published. If specified, an asset
  /// [contentType] Asset content type. If not specified, no content but the asset name and type will be returned.
  /// [feedId] This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  /// [feedOutputConfig] Output configuration for asset feed destination.
  /// [name] The format will be organizations/{organization_number}/feeds/{client-assigned_feed_identifier}.
  /// [orgId] The organization this feed should be created in.
  OrganizationFeedState({
    this.assetNames,
    this.assetTypes,
    this.billingProject,
    this.condition,
    this.contentType,
    this.feedId,
    this.feedOutputConfig,
    this.name,
    this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetNames': ?assetNames,
      'assetTypes': ?assetTypes,
      'billingProject': ?billingProject,
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationFeedCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'contentType': ?contentType,
      'feedId': ?feedId,
      'feedOutputConfig':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationFeedFeedOutputConfig,
            Map<String, dynamic>
          >(feedOutputConfig, (value) => value.toMap()),
      'name': ?name,
      'orgId': ?orgId,
    };
  }

  factory OrganizationFeedState.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedState(
      assetNames: (() {
        final guardedValue = map['assetNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      assetTypes: (() {
        final guardedValue = map['assetTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      billingProject: (() {
        final guardedValue = map['billingProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationFeedCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      feedId: (() {
        final guardedValue = map['feedId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      feedOutputConfig: (() {
        final guardedValue = map['feedOutputConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationFeedFeedOutputConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: (() {
        final guardedValue = map['orgId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
