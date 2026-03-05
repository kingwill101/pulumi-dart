// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_feed_condition.dart';
import 'organization_feed_feed_output_config.dart';

/// {@template pulumi_cloudasset_organization_feed_organization_feed_args_doc}
/// The set of arguments for OrganizationFeed.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_organization_feed_organization_feed_args_doc}
class OrganizationFeedArgs {
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
  final pulumi.Input<String> billingProject;
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
  final pulumi.Input<String> feedId;
  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  final pulumi.Input<OrganizationFeedFeedOutputConfig> feedOutputConfig;
  /// The organization this feed should be created in.
  final pulumi.Input<String> orgId;

  /// Creates a new [OrganizationFeedArgs].
  /// [assetNames] A list of the full names of the assets to receive updates. You must specify either or both of
  /// [assetTypes] A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// [billingProject] The project whose identity will be used when sending messages to the
  /// [condition] A condition which determines whether an asset update should be published. If specified, an asset
  /// [contentType] Asset content type. If not specified, no content but the asset name and type will be returned.
  /// [feedId] This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  /// [feedOutputConfig] Output configuration for asset feed destination.
  /// [orgId] The organization this feed should be created in.
  OrganizationFeedArgs({
    this.assetNames,
    this.assetTypes,
    required this.billingProject,
    this.condition,
    this.contentType,
    required this.feedId,
    required this.feedOutputConfig,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetNames': ?assetNames,
      'assetTypes': ?assetTypes,
      'billingProject': billingProject,
      'condition': ?pulumi.Input.mapOptionalInputValue<OrganizationFeedCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'contentType': ?contentType,
      'feedId': feedId,
      'feedOutputConfig': pulumi.Input.mapInputValue<OrganizationFeedFeedOutputConfig, Map<String, dynamic>>(feedOutputConfig, (value) => value.toMap()),
      'orgId': orgId,
    };
  }

  factory OrganizationFeedArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedArgs(
      assetNames: (() { final guardedValue = map['assetNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      assetTypes: (() { final guardedValue = map['assetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      billingProject: pulumi.Input.fromValue(map['billingProject'] as String),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationFeedCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedId: pulumi.Input.fromValue(map['feedId'] as String),
      feedOutputConfig: pulumi.Input.fromValue(OrganizationFeedFeedOutputConfig.fromMap((map['feedOutputConfig']! as Map).cast<String, dynamic>())),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
    );
  }
}

