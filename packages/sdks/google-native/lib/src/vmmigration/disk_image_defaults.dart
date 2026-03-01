// ignore_for_file: unused_element, unnecessary_cast


/// Contains details about the image source used to create the disk.
class DiskImageDefaults {
  /// The Image resource used when creating the disk.
  final String sourceImage;

  /// Creates a new [DiskImageDefaults].
  /// [sourceImage] The Image resource used when creating the disk.
  DiskImageDefaults({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImage': sourceImage,
    };
  }

  factory DiskImageDefaults.fromMap(Map<String, dynamic> map) {
    return DiskImageDefaults(
      sourceImage: map['sourceImage'] as String,
    );
  }
}

