// ignore_for_file: unused_element, unnecessary_cast


/// Distribute as a Managed Disk Image.
class ImageTemplateManagedImageDistributor {
  /// Tags that will be applied to the artifact once it has been created/updated by the distributor.
  final Map<String, String>? artifactTags;
  /// Resource Id of the Managed Disk Image
  final String imageId;
  /// Azure location for the image, should match if image already exists
  final String location;
  /// The name to be used for the associated RunOutput.
  final String runOutputName;
  /// Type of distribution.
  /// Expected value is 'ManagedImage'.
  final String type;

  /// Creates a new [ImageTemplateManagedImageDistributor].
  /// [artifactTags] Tags that will be applied to the artifact once it has been created/updated by the distributor.
  /// [imageId] Resource Id of the Managed Disk Image
  /// [location] Azure location for the image, should match if image already exists
  /// [runOutputName] The name to be used for the associated RunOutput.
  /// [type] Type of distribution.
  ImageTemplateManagedImageDistributor({
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
      artifactTags: map['artifactTags'] == null ? null : (map['artifactTags'] as Map).cast<String, String>(),
      imageId: map['imageId'] as String,
      location: map['location'] as String,
      runOutputName: map['runOutputName'] as String,
      type: map['type'] as String,
    );
  }
}

