// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_approval_config.dart';
import 'data_product_access_group.dart';

/// Input properties used for looking up and filtering DataProduct resources.
class DataProductState {
  /// Configuration for access approval for the data product.
  /// Structure is documented below.
  final pulumi.Input<DataProductAccessApprovalConfig>? accessApprovalConfig;
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  final pulumi.Input<List<DataProductAccessGroup>>? accessGroups;
  /// Number of associated data assets.
  final pulumi.Input<int>? assetCount;
  /// Creation timestamp.
  final pulumi.Input<String>? createTime;
  /// The ID of the data product.
  final pulumi.Input<String>? dataProductId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the data product.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Checksum for concurrency control.
  final pulumi.Input<String>? etag;
  /// Base64 encoded image representing the data product. Max Size: 3.0MiB
  /// Expected image dimensions are 512x512 pixels, however the API only
  /// performs validation on size of the encoded data.
  /// Note: For byte fields, the content of the fields are base64-encoded (which
  /// increases the size of the data by 33-36%) when using JSON on the wire.
  final pulumi.Input<String>? icon;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the data product.
  final pulumi.Input<String>? location;
  /// The relative resource name of the data product.
  final pulumi.Input<String>? name;
  /// Emails of the owners.
  final pulumi.Input<List<String>>? ownerEmails;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// System generated unique ID.
  final pulumi.Input<String>? uid;
  /// Last update timestamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataProductState].
  /// [accessApprovalConfig] Configuration for access approval for the data product.
  /// [accessGroups] Custom user defined access groups at the data product level.
  /// [assetCount] Number of associated data assets.
  /// [createTime] Creation timestamp.
  /// [dataProductId] The ID of the data product.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the data product.
  /// [displayName] User-friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Checksum for concurrency control.
  /// [icon] Base64 encoded image representing the data product. Max Size: 3.0MiB
  /// [labels] User-defined labels.
  /// [location] The location for the data product.
  /// [name] The relative resource name of the data product.
  /// [ownerEmails] Emails of the owners.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] System generated unique ID.
  /// [updateTime] Last update timestamp.
  const DataProductState({
    this.accessApprovalConfig,
    this.accessGroups,
    this.assetCount,
    this.createTime,
    this.dataProductId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.etag,
    this.icon,
    this.labels,
    this.location,
    this.name,
    this.ownerEmails,
    this.project,
    this.pulumiLabels,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessApprovalConfig': ?pulumi.Input.mapOptionalInputValue<DataProductAccessApprovalConfig, Map<String, dynamic>>(accessApprovalConfig, (value) => value.toMap()),
      'accessGroups': ?pulumi.Input.mapOptionalInputValue<List<DataProductAccessGroup>, List<Map<String, dynamic>>>(accessGroups, (value) => pulumi.Input.encodeList<DataProductAccessGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assetCount': ?assetCount,
      'createTime': ?createTime,
      'dataProductId': ?dataProductId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'icon': ?icon,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'ownerEmails': ?ownerEmails,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DataProductState.fromMap(Map<String, dynamic> map) {
    return DataProductState(
      accessApprovalConfig: (() { final guardedValue = map['accessApprovalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProductAccessApprovalConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accessGroups: (() { final guardedValue = map['accessGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataProductAccessGroup>(guardedValue, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      assetCount: (() { final guardedValue = map['assetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProductId: (() { final guardedValue = map['dataProductId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerEmails: (() { final guardedValue = map['ownerEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
