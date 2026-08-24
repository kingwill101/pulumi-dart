// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpCustomEntryProfile {
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustDlpCustomEntryProfile].
  /// [id] Optional.
  /// [name] Optional.
  const ZeroTrustDlpCustomEntryProfile({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ZeroTrustDlpCustomEntryProfile.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomEntryProfile(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
