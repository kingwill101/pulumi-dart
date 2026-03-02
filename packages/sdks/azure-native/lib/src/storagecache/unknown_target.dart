// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the UnknownTarget
class UnknownTarget {
  /// Dictionary of string->string pairs containing information about the Storage Target.
  final pulumi.Input<Map<String, String>>? attributes;

  /// Creates a new [UnknownTarget].
  /// [attributes] Dictionary of string->string pairs containing information about the Storage Target.
  UnknownTarget({
    this.attributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
    };
  }

  factory UnknownTarget.fromMap(Map<String, dynamic> map) {
    return UnknownTarget(
      attributes: map['attributes'] == null ? null : ((map['attributes']! as Map).cast<String, String>()).input(),
    );
  }
}

