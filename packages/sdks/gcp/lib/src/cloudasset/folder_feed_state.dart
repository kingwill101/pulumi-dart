// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_feed_condition.dart';
import 'folder_feed_feed_output_config.dart';

/// Input properties used for looking up and filtering FolderFeed resources.
class FolderFeedState {
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
  final pulumi.Input<FolderFeedCondition>? condition;
  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  final pulumi.Input<String>? contentType;
  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  final pulumi.Input<String>? feedId;
  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  final pulumi.Input<FolderFeedFeedOutputConfig>? feedOutputConfig;
  /// The folder this feed should be created in.
  final pulumi.Input<String>? folder;
  /// The ID of the folder where this feed has been created. Both [FOLDER_NUMBER]
  /// and folders/[FOLDER_NUMBER] are accepted.
  final pulumi.Input<String>? folderId;
  /// The format will be folders/{folder_number}/feeds/{client-assigned_feed_identifier}.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderFeedState].
  /// [assetNames] A list of the full names of the assets to receive updates. You must specify either or both of
  /// [assetTypes] A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// [billingProject] The project whose identity will be used when sending messages to the
  /// [condition] A condition which determines whether an asset update should be published. If specified, an asset
  /// [contentType] Asset content type. If not specified, no content but the asset name and type will be returned.
  /// [feedId] This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  /// [feedOutputConfig] Output configuration for asset feed destination.
  /// [folder] The folder this feed should be created in.
  /// [folderId] The ID of the folder where this feed has been created. Both [FOLDER_NUMBER]
  /// [name] The format will be folders/{folder_number}/feeds/{client-assigned_feed_identifier}.
  FolderFeedState({
    this.assetNames,
    this.assetTypes,
    this.billingProject,
    this.condition,
    this.contentType,
    this.feedId,
    this.feedOutputConfig,
    this.folder,
    this.folderId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetNames': ?assetNames,
      'assetTypes': ?assetTypes,
      'billingProject': ?billingProject,
      'condition': ?pulumi.Input.mapOptionalInputValue<FolderFeedCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'contentType': ?contentType,
      'feedId': ?feedId,
      'feedOutputConfig': ?pulumi.Input.mapOptionalInputValue<FolderFeedFeedOutputConfig, Map<String, dynamic>>(feedOutputConfig, (value) => value.toMap()),
      'folder': ?folder,
      'folderId': ?folderId,
      'name': ?name,
    };
  }

  factory FolderFeedState.fromMap(Map<String, dynamic> map) {
    return FolderFeedState(
      assetNames: map['assetNames'] == null ? null : ((map['assetNames'] as List).cast<String>()).input(),
      assetTypes: map['assetTypes'] == null ? null : ((map['assetTypes'] as List).cast<String>()).input(),
      billingProject: map['billingProject'] == null ? null : (map['billingProject'] as String).input(),
      condition: map['condition'] == null ? null : (FolderFeedCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      feedId: map['feedId'] == null ? null : (map['feedId'] as String).input(),
      feedOutputConfig: map['feedOutputConfig'] == null ? null : (FolderFeedFeedOutputConfig.fromMap((map['feedOutputConfig'] as Map).cast<String, dynamic>())).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

