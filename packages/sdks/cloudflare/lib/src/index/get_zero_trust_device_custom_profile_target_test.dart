// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceCustomProfileTargetTest {
  /// The id of the DEX test targeting this policy.
  final pulumi.Input<String> id;
  /// The name of the DEX test targeting this policy.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustDeviceCustomProfileTargetTest].
  /// [id] The id of the DEX test targeting this policy.
  /// [name] The name of the DEX test targeting this policy.
  const GetZeroTrustDeviceCustomProfileTargetTest({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustDeviceCustomProfileTargetTest.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileTargetTest(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
