// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessTagsResult {
  /// The name of the tag
  final pulumi.Input<String> id;
  /// The name of the tag
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustAccessTagsResult].
  /// [id] The name of the tag
  /// [name] The name of the tag
  const GetZeroTrustAccessTagsResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustAccessTagsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessTagsResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
