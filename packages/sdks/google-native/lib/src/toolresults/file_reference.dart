// ignore_for_file: unused_element, unnecessary_cast


/// A reference to a file.
class FileReference {
  /// The URI of a file stored in Google Cloud Storage. For example: http://storage.googleapis.com/mybucket/path/to/test.xml or in gsutil format: gs://mybucket/path/to/test.xml with version-specific info, gs://mybucket/path/to/test.xml#1360383693690000 An INVALID_ARGUMENT error will be returned if the URI format is not supported. - In response: always set - In create/update request: always set
  final String? fileUri;

  /// Creates a new [FileReference].
  /// [fileUri] The URI of a file stored in Google Cloud Storage. For example: http://storage.googleapis.com/mybucket/path/to/test.xml or in gsutil format: gs://mybucket/path/to/test.xml with version-specific info, gs://mybucket/path/to/test.xml#1360383693690000 An INVALID_ARGUMENT error will be returned if the URI format is not supported. - In response: always set - In create/update request: always set
  FileReference({
    this.fileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileUri': ?fileUri,
    };
  }

  factory FileReference.fromMap(Map<String, dynamic> map) {
    return FileReference(
      fileUri: map['fileUri'] == null ? null : map['fileUri'] as String,
    );
  }
}

