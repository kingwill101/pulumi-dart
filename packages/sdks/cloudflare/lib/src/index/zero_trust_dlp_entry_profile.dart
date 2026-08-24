// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpEntryProfile {
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustDlpEntryProfile].
  /// [id] Optional.
  /// [name] Optional.
  const ZeroTrustDlpEntryProfile({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ZeroTrustDlpEntryProfile.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpEntryProfile(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
