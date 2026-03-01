// ignore_for_file: unused_element, unnecessary_cast


class AccountStaticWebsite {
  /// The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  final String? error404Document;
  /// The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html. The value is case-sensitive.
  final String? indexDocument;

  /// Creates a new [AccountStaticWebsite].
  /// [error404Document] The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  /// [indexDocument] The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html. The value is case-sensitive.
  AccountStaticWebsite({
    this.error404Document,
    this.indexDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error404Document': ?error404Document,
      'indexDocument': ?indexDocument,
    };
  }

  factory AccountStaticWebsite.fromMap(Map<String, dynamic> map) {
    return AccountStaticWebsite(
      error404Document: map['error404Document'] == null ? null : map['error404Document'] as String,
      indexDocument: map['indexDocument'] == null ? null : map['indexDocument'] as String,
    );
  }
}

