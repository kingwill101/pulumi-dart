// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTestBaseAccountFileUploadUrl.
class GetTestBaseAccountFileUploadUrlResult {
  /// The blob path of the uploaded package. It will be used as the 'blobPath' property of PackageResource.
  final String blobPath;

  /// The URL used for uploading the package.
  final String uploadUrl;

  /// Creates a new [GetTestBaseAccountFileUploadUrlResult].
  /// [blobPath] The blob path of the uploaded package. It will be used as the 'blobPath' property of PackageResource.
  /// [uploadUrl] The URL used for uploading the package.
  GetTestBaseAccountFileUploadUrlResult({
    required this.blobPath,
    required this.uploadUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'blobPath': blobPath, 'uploadUrl': uploadUrl};
  }

  factory GetTestBaseAccountFileUploadUrlResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTestBaseAccountFileUploadUrlResult(
      blobPath: map['blobPath'] as String,
      uploadUrl: map['uploadUrl'] as String,
    );
  }
}
