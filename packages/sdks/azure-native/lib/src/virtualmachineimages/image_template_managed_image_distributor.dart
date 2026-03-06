// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Distribute as a Managed Disk Image.
class ImageTemplateManagedImageDistributor {
  /// Tags that will be applied to the artifact once it has been created/updated by the distributor.
  final pulumi.Input<Map<String, String>>? artifactTags;
  /// Resource Id of the Managed Disk Image
  final pulumi.Input<String> imageId;
  /// Azure location for the image, should match if image already exists
  final pulumi.Input<String> location;
  /// The name to be used for the associated RunOutput.
  final pulumi.Input<String> runOutputName;
  /// Type of distribution.
  /// Expected value is 'ManagedImage'.
  final pulumi.Input<String> type;

  /// Creates a new [ImageTemplateManagedImageDistributor].
  /// [artifactTags] Tags that will be applied to the artifact once it has been created/updated by the distributor.
  /// [imageId] Resource Id of the Managed Disk Image
  /// [location] Azure location for the image, should match if image already exists
  /// [runOutputName] The name to be used for the associated RunOutput.
  /// [type] Type of distribution.
  const ImageTemplateManagedImageDistributor({
    this.artifactTags,
    required this.imageId,
    required this.location,
    required this.runOutputName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactTags': ?artifactTags,
      'imageId': imageId,
      'location': location,
      'runOutputName': runOutputName,
      'type': type,
    };
  }

  factory ImageTemplateManagedImageDistributor.fromMap(Map<String, dynamic> map) {
    return ImageTemplateManagedImageDistributor(
      artifactTags: (() { final guardedValue = map['artifactTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      runOutputName: pulumi.Input.fromValue(map['runOutputName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

