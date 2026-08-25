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
  final pulumi.Input<List<String>?>? assetNames;
  /// A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
  /// the feed. For example: "compute.googleapis.com/Disk"
  /// See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
  /// supported asset types.
  final pulumi.Input<List<String>?>? assetTypes;
  /// The project whose identity will be used when sending messages to the
  /// destination pubsub topic. It also specifies the project for API
  /// enablement check, quota, and billing.
  final pulumi.Input<String?>? billingProject;
  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  final pulumi.Input<FolderFeedCondition?>? condition;
  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  final pulumi.Input<String?>? contentType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  final pulumi.Input<String?>? feedId;
  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  final pulumi.Input<FolderFeedFeedOutputConfig?>? feedOutputConfig;
  /// The folder this feed should be created in.
  final pulumi.Input<String?>? folder;
  /// The ID of the folder where this feed has been created. Both [FOLDER_NUMBER]
  /// and folders/[FOLDER_NUMBER] are accepted.
  final pulumi.Input<String?>? folderId;
  /// The format will be folders/{folder_number}/feeds/{client-assigned_feed_identifier}.
  final pulumi.Input<String?>? name;

  /// Creates a new [FolderFeedState].
  /// [assetNames] A list of the full names of the assets to receive updates. You must specify either or both of
  /// [assetTypes] A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// [billingProject] The project whose identity will be used when sending messages to the
  /// [condition] A condition which determines whether an asset update should be published. If specified, an asset
  /// [contentType] Asset content type. If not specified, no content but the asset name and type will be returned.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [feedId] This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  /// [feedOutputConfig] Output configuration for asset feed destination.
  /// [folder] The folder this feed should be created in.
  /// [folderId] The ID of the folder where this feed has been created. Both [FOLDER_NUMBER]
  /// [name] The format will be folders/{folder_number}/feeds/{client-assigned_feed_identifier}.
  const FolderFeedState({
    this.assetNames,
    this.assetTypes,
    this.billingProject,
    this.condition,
    this.contentType,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
      'feedId': ?feedId,
      'feedOutputConfig': ?pulumi.Input.mapOptionalInputValue<FolderFeedFeedOutputConfig, Map<String, dynamic>>(feedOutputConfig, (value) => value.toMap()),
      'folder': ?folder,
      'folderId': ?folderId,
      'name': ?name,
    };
  }

  factory FolderFeedState.fromMap(Map<String, dynamic> map) {
    return FolderFeedState(
      assetNames: (() { final guardedValue = map['assetNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      assetTypes: (() { final guardedValue = map['assetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      billingProject: (() { final guardedValue = map['billingProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FolderFeedCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedId: (() { final guardedValue = map['feedId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedOutputConfig: (() { final guardedValue = map['feedOutputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FolderFeedFeedOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
