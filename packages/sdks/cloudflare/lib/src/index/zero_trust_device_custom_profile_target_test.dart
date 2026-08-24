// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceCustomProfileTargetTest {
  /// The id of the DEX test targeting this policy.
  final pulumi.Input<String?>? id;
  /// The name of the DEX test targeting this policy.
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustDeviceCustomProfileTargetTest].
  /// [id] The id of the DEX test targeting this policy.
  /// [name] The name of the DEX test targeting this policy.
  const ZeroTrustDeviceCustomProfileTargetTest({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ZeroTrustDeviceCustomProfileTargetTest.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileTargetTest(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
