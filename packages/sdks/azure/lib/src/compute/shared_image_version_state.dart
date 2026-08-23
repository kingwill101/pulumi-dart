// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_version_target_region.dart';

/// Input properties used for looking up and filtering SharedImageVersion resources.
class SharedImageVersionState {
  /// URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** You must specify exact one of `blobUri`, `managedImageId` and `osDiskSnapshotId`.
  ///
  /// &gt; **NOTE:** `blobUri` and `storageAccountId` must be specified together
  final pulumi.Input<String>? blobUri;
  /// Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? deletionOfReplicatedLocationsEnabled;
  /// The end of life date in RFC3339 format of the Image Version.
  final pulumi.Input<String>? endOfLifeDate;
  /// Should this Image Version be excluded from the `latest` filter? If set to `true` this Image Version won't be returned for the `latest` version. Defaults to `false`.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? galleryName;
  /// The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? imageName;
  /// The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** The ID can be sourced from the `azure.compute.Image` data source or resource
  ///
  /// &gt; **NOTE:** You must specify exact one of `blobUri`, `managedImageId` and `osDiskSnapshotId`.
  final pulumi.Input<String>? managedImageId;
  /// The version number for this Image Version, such as `1.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** You must specify exact one of `blobUri`, `managedImageId` and `osDiskSnapshotId`.
  final pulumi.Input<String>? osDiskSnapshotId;
  /// Mode to be used for replication. Possible values are `Full` and `Shallow`. Defaults to `Full`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? replicationMode;
  /// The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `blobUri` and `storageAccountId` must be specified together
  final pulumi.Input<String>? storageAccountId;
  /// A collection of tags which should be applied to this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `targetRegion` blocks as documented below.
  final pulumi.Input<List<SharedImageVersionTargetRegion>>? targetRegions;

  /// Creates a new [SharedImageVersionState].
  /// [blobUri] URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created.
  /// [deletionOfReplicatedLocationsEnabled] Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to `false`. Changing this forces a new resource to be created.
  /// [endOfLifeDate] The end of life date in RFC3339 format of the Image Version.
  /// [excludeFromLatest] Should this Image Version be excluded from the `latest` filter? If set to `true` this Image Version won't be returned for the `latest` version. Defaults to `false`.
  /// [galleryName] The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created.
  /// [imageName] The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created.
  /// [location] The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  /// [managedImageId] The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  /// [name] The version number for this Image Version, such as `1.0.0`. Changing this forces a new resource to be created.
  /// [osDiskSnapshotId] The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  /// [replicationMode] Mode to be used for replication. Possible values are `Full` and `Shallow`. Defaults to `Full`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  /// [storageAccountId] The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created.
  /// [tags] A collection of tags which should be applied to this resource.
  /// [targetRegions] One or more `targetRegion` blocks as documented below.
  const SharedImageVersionState({
    this.blobUri,
    this.deletionOfReplicatedLocationsEnabled,
    this.endOfLifeDate,
    this.excludeFromLatest,
    this.galleryName,
    this.imageName,
    this.location,
    this.managedImageId,
    this.name,
    this.osDiskSnapshotId,
    this.replicationMode,
    this.resourceGroupName,
    this.storageAccountId,
    this.tags,
    this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'deletionOfReplicatedLocationsEnabled': ?deletionOfReplicatedLocationsEnabled,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryName': ?galleryName,
      'imageName': ?imageName,
      'location': ?location,
      'managedImageId': ?managedImageId,
      'name': ?name,
      'osDiskSnapshotId': ?osDiskSnapshotId,
      'replicationMode': ?replicationMode,
      'resourceGroupName': ?resourceGroupName,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<SharedImageVersionTargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<SharedImageVersionTargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SharedImageVersionState.fromMap(Map<String, dynamic> map) {
    return SharedImageVersionState(
      blobUri: (() { final guardedValue = map['blobUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionOfReplicatedLocationsEnabled: (() { final guardedValue = map['deletionOfReplicatedLocationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      galleryName: (() { final guardedValue = map['galleryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedImageId: (() { final guardedValue = map['managedImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDiskSnapshotId: (() { final guardedValue = map['osDiskSnapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SharedImageVersionTargetRegion>(guardedValue, (value) => SharedImageVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
