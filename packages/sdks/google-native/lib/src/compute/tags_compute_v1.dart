// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of instance tags.
class TagsComputeV1 {
  /// An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<List<String>>? items;

  /// Creates a new [TagsComputeV1].
  /// [items] An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035.
  TagsComputeV1({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory TagsComputeV1.fromMap(Map<String, dynamic> map) {
    return TagsComputeV1(
      items: (() {
        final guardedValue = map['items'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
