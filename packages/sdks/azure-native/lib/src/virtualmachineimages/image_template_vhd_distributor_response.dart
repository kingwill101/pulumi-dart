// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Distribute via VHD in a storage account.
class ImageTemplateVhdDistributorResponse {
  /// Tags that will be applied to the artifact once it has been created/updated by the distributor.
  final pulumi.Input<Map<String, String>>? artifactTags;

  /// The name to be used for the associated RunOutput.
  final pulumi.Input<String> runOutputName;

  /// Type of distribution.
  /// Expected value is 'VHD'.
  final pulumi.Input<String> type;

  /// Optional Azure Storage URI for the distributed VHD blob. Omit to use the default (empty string) in which case VHD would be published to the storage account in the staging resource group.
  final pulumi.Input<String>? uri;

  /// Creates a new [ImageTemplateVhdDistributorResponse].
  /// [artifactTags] Tags that will be applied to the artifact once it has been created/updated by the distributor.
  /// [runOutputName] The name to be used for the associated RunOutput.
  /// [type] Type of distribution.
  /// [uri] Optional Azure Storage URI for the distributed VHD blob. Omit to use the default (empty string) in which case VHD would be published to the storage account in the staging resource group.
  ImageTemplateVhdDistributorResponse({
    this.artifactTags,
    required this.runOutputName,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactTags': ?artifactTags,
      'runOutputName': runOutputName,
      'type': type,
      'uri': ?uri,
    };
  }

  factory ImageTemplateVhdDistributorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImageTemplateVhdDistributorResponse(
      artifactTags: (() {
        final guardedValue = map['artifactTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      runOutputName: pulumi.Input.fromValue(map['runOutputName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
