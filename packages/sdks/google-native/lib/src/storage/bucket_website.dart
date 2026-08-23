// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
class BucketWebsite {
  /// If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
  final pulumi.Input<String>? mainPageSuffix;
  /// If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
  final pulumi.Input<String>? notFoundPage;

  /// Creates a new [BucketWebsite].
  /// [mainPageSuffix] If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
  /// [notFoundPage] If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
  const BucketWebsite({
    this.mainPageSuffix,
    this.notFoundPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainPageSuffix': ?mainPageSuffix,
      'notFoundPage': ?notFoundPage,
    };
  }

  factory BucketWebsite.fromMap(Map<String, dynamic> map) {
    return BucketWebsite(
      mainPageSuffix: (() { final guardedValue = map['mainPageSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notFoundPage: (() { final guardedValue = map['notFoundPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
