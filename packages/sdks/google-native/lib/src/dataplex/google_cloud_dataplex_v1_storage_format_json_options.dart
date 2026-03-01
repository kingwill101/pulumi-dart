// ignore_for_file: unused_element, unnecessary_cast


/// Describes JSON data format.
class GoogleCloudDataplexV1StorageFormatJsonOptions {
  /// Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8" and "ISO-8859-1". Defaults to UTF-8 if not specified.
  final String? encoding;

  /// Creates a new [GoogleCloudDataplexV1StorageFormatJsonOptions].
  /// [encoding] Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8" and "ISO-8859-1". Defaults to UTF-8 if not specified.
  GoogleCloudDataplexV1StorageFormatJsonOptions({
    this.encoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
    };
  }

  factory GoogleCloudDataplexV1StorageFormatJsonOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatJsonOptions(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
    );
  }
}

