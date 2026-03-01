// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_group.dart';

/// Input properties used for looking up and filtering DataProduct resources.
class DataProductState {
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  final pulumi.Input<List<DataProductAccessGroup>>? accessGroups;
  /// Number of associated data assets.
  final pulumi.Input<int>? assetCount;
  /// Creation timestamp.
  final pulumi.Input<String>? createTime;
  /// The ID of the data product.
  final pulumi.Input<String>? dataProductId;
  /// Description of the data product.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Checksum for concurrency control.
  final pulumi.Input<String>? etag;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the data product.
  final pulumi.Input<String>? location;
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
  /// [accessGroups] Custom user defined access groups at the data product level.
  /// [assetCount] Number of associated data assets.
  /// [createTime] Creation timestamp.
  /// [dataProductId] The ID of the data product.
  /// [description] Description of the data product.
  /// [displayName] User-friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Checksum for concurrency control.
  /// [labels] User-defined labels.
  /// [location] The location for the data product.
  /// [ownerEmails] Emails of the owners.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] System generated unique ID.
  /// [updateTime] Last update timestamp.
  DataProductState({
    pulumi.Output<List<DataProductAccessGroup>>? accessGroups,
    pulumi.Output<int>? assetCount,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataProductId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? ownerEmails,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      accessGroups = pulumi.Input.asOptionalInput<List<DataProductAccessGroup>>(accessGroups),
      assetCount = pulumi.Input.asOptionalInput<int>(assetCount),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataProductId = pulumi.Input.asOptionalInput<String>(dataProductId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      ownerEmails = pulumi.Input.asOptionalInput<List<String>>(ownerEmails),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroups': ?pulumi.Input.mapOptionalInputValue<List<DataProductAccessGroup>, List<Map<String, dynamic>>>(accessGroups, (value) => pulumi.Input.encodeList<DataProductAccessGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assetCount': ?assetCount,
      'createTime': ?createTime,
      'dataProductId': ?dataProductId,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'ownerEmails': ?ownerEmails,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DataProductState.fromMap(Map<String, dynamic> map) {
    return DataProductState(
      accessGroups: map['accessGroups'] == null ? null : pulumi.Output.create<List<DataProductAccessGroup>>(pulumi.Input.decodeList<DataProductAccessGroup>(map['accessGroups'], (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>()))),
      assetCount: map['assetCount'] == null ? null : pulumi.Output.create<int>(map['assetCount'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataProductId: map['dataProductId'] == null ? null : pulumi.Output.create<String>(map['dataProductId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      ownerEmails: map['ownerEmails'] == null ? null : pulumi.Output.create<List<String>>((map['ownerEmails'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

