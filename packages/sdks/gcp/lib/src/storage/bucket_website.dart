// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsite {
  /// Behaves as the bucket's directory index where
  /// missing objects are treated as potential directories.
  final pulumi.Input<String>? mainPageSuffix;
  /// The custom object to return when a requested
  /// resource is not found.
  final pulumi.Input<String>? notFoundPage;

  /// Creates a new [BucketWebsite].
  /// [mainPageSuffix] Behaves as the bucket's directory index where
  /// [notFoundPage] The custom object to return when a requested
  BucketWebsite({
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

