// ignore_for_file: unused_element, unnecessary_cast


class GetBucketWebsite {
  /// Behaves as the bucket's directory index where missing objects are treated as potential directories.
  final String mainPageSuffix;
  /// The custom object to return when a requested resource is not found.
  final String notFoundPage;

  /// Creates a new [GetBucketWebsite].
  /// [mainPageSuffix] Behaves as the bucket's directory index where missing objects are treated as potential directories.
  /// [notFoundPage] The custom object to return when a requested resource is not found.
  GetBucketWebsite({
    required this.mainPageSuffix,
    required this.notFoundPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainPageSuffix': mainPageSuffix,
      'notFoundPage': notFoundPage,
    };
  }

  factory GetBucketWebsite.fromMap(Map<String, dynamic> map) {
    return GetBucketWebsite(
      mainPageSuffix: map['mainPageSuffix'] as String,
      notFoundPage: map['notFoundPage'] as String,
    );
  }
}

