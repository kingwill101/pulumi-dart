// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribute_versioner_latest_response.dart';
import 'target_region_response.dart';

/// Distribute via Azure Compute Gallery.
class ImageTemplateSharedImageDistributorResponse {
  /// Tags that will be applied to the artifact once it has been created/updated by the distributor.
  final pulumi.Input<Map<String, String>>? artifactTags;
  /// Flag that indicates whether created image version should be excluded from latest. Omit to use the default (false).
  final pulumi.Input<bool>? excludeFromLatest;
  /// Resource Id of the Azure Compute Gallery image
  final pulumi.Input<String> galleryImageId;
  /// [Deprecated] A list of regions that the image will be replicated to. This list can be specified only if targetRegions is not specified. This field is deprecated - use targetRegions instead.
  final pulumi.Input<List<String>>? replicationRegions;
  /// The name to be used for the associated RunOutput.
  final pulumi.Input<String> runOutputName;
  /// [Deprecated] Storage account type to be used to store the shared image. Omit to use the default (Standard_LRS). This field can be specified only if replicationRegions is specified. This field is deprecated - use targetRegions instead.
  final pulumi.Input<String>? storageAccountType;
  /// The target regions where the distributed Image Version is going to be replicated to. This object supersedes replicationRegions and can be specified only if replicationRegions is not specified.
  final pulumi.Input<List<TargetRegionResponse>>? targetRegions;
  /// Type of distribution.
  /// Expected value is 'SharedImage'.
  final pulumi.Input<String> type;
  /// Describes how to generate new x.y.z version number for distribution.
  final pulumi.Input<DistributeVersionerLatestResponse>? versioning;

  /// Creates a new [ImageTemplateSharedImageDistributorResponse].
  /// [artifactTags] Tags that will be applied to the artifact once it has been created/updated by the distributor.
  /// [excludeFromLatest] Flag that indicates whether created image version should be excluded from latest. Omit to use the default (false).
  /// [galleryImageId] Resource Id of the Azure Compute Gallery image
  /// [replicationRegions] [Deprecated] A list of regions that the image will be replicated to. This list can be specified only if targetRegions is not specified. This field is deprecated - use targetRegions instead.
  /// [runOutputName] The name to be used for the associated RunOutput.
  /// [storageAccountType] [Deprecated] Storage account type to be used to store the shared image. Omit to use the default (Standard_LRS). This field can be specified only if replicationRegions is specified. This field is deprecated - use targetRegions instead.
  /// [targetRegions] The target regions where the distributed Image Version is going to be replicated to. This object supersedes replicationRegions and can be specified only if replicationRegions is not specified.
  /// [type] Type of distribution.
  /// [versioning] Describes how to generate new x.y.z version number for distribution.
  ImageTemplateSharedImageDistributorResponse({
    this.artifactTags,
    this.excludeFromLatest,
    required this.galleryImageId,
    this.replicationRegions,
    required this.runOutputName,
    this.storageAccountType,
    this.targetRegions,
    required this.type,
    this.versioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactTags': ?artifactTags,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryImageId': galleryImageId,
      'replicationRegions': ?replicationRegions,
      'runOutputName': runOutputName,
      'storageAccountType': ?storageAccountType,
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<TargetRegionResponse>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<TargetRegionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'versioning': ?pulumi.Input.mapOptionalInputValue<DistributeVersionerLatestResponse, Map<String, dynamic>>(versioning, (value) => value.toMap()),
    };
  }

  factory ImageTemplateSharedImageDistributorResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateSharedImageDistributorResponse(
      artifactTags: map['artifactTags'] == null ? null : ((map['artifactTags'] as Map).cast<String, String>()).input(),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : (map['excludeFromLatest'] as bool).input(),
      galleryImageId: (map['galleryImageId'] as String).input(),
      replicationRegions: map['replicationRegions'] == null ? null : ((map['replicationRegions'] as List).cast<String>()).input(),
      runOutputName: (map['runOutputName'] as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
      targetRegions: map['targetRegions'] == null ? null : (pulumi.Input.decodeList<TargetRegionResponse>(map['targetRegions'], (value) => TargetRegionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      versioning: map['versioning'] == null ? null : (DistributeVersionerLatestResponse.fromMap((map['versioning'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

