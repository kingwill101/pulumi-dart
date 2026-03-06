// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the UnknownTarget
class UnknownTargetResponse {
  /// Dictionary of string-&gt;string pairs containing information about the Storage Target.
  final pulumi.Input<Map<String, String>>? attributes;

  /// Creates a new [UnknownTargetResponse].
  /// [attributes] Dictionary of string-&gt;string pairs containing information about the Storage Target.
  const UnknownTargetResponse({
    this.attributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
    };
  }

  factory UnknownTargetResponse.fromMap(Map<String, dynamic> map) {
    return UnknownTargetResponse(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

