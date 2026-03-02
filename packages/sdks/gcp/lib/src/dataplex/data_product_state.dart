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
    this.accessGroups,
    this.assetCount,
    this.createTime,
    this.dataProductId,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.ownerEmails,
    this.project,
    this.pulumiLabels,
    this.uid,
    this.updateTime,
  });

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
      accessGroups: map['accessGroups'] == null ? null : (pulumi.Input.decodeList<DataProductAccessGroup>(map['accessGroups']!, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      assetCount: map['assetCount'] == null ? null : (map['assetCount']! as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dataProductId: map['dataProductId'] == null ? null : (map['dataProductId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      ownerEmails: map['ownerEmails'] == null ? null : ((map['ownerEmails']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

