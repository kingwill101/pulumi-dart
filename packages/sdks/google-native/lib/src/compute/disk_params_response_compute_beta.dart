// ignore_for_file: unused_element, unnecessary_cast


/// Additional disk params.
class DiskParamsResponseComputeBeta {
  /// Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Creates a new [DiskParamsResponseComputeBeta].
  /// [resourceManagerTags] Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  DiskParamsResponseComputeBeta({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory DiskParamsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return DiskParamsResponseComputeBeta(
      resourceManagerTags: (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}

