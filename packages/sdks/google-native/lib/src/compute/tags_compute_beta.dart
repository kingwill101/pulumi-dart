// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of instance tags.
class TagsComputeBeta {
  /// An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<List<String>>? items;

  /// Creates a new [TagsComputeBeta].
  /// [items] An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  TagsComputeBeta({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory TagsComputeBeta.fromMap(Map<String, dynamic> map) {
    return TagsComputeBeta(
      items: map['items'] == null ? null : ((map['items'] as List).cast<String>()).input(),
    );
  }
}

