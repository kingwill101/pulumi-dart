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
  const ImageTemplateSharedImageDistributorResponse({
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
      artifactTags: (() { final guardedValue = map['artifactTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      galleryImageId: pulumi.Input.fromValue(map['galleryImageId'] as String),
      replicationRegions: (() { final guardedValue = map['replicationRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      runOutputName: pulumi.Input.fromValue(map['runOutputName'] as String),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetRegionResponse>(guardedValue, (value) => TargetRegionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      versioning: (() { final guardedValue = map['versioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributeVersionerLatestResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
