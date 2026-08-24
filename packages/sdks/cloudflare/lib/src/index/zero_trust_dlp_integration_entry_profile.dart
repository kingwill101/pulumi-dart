// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpIntegrationEntryProfile {
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustDlpIntegrationEntryProfile].
  /// [id] Optional.
  /// [name] Optional.
  const ZeroTrustDlpIntegrationEntryProfile({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ZeroTrustDlpIntegrationEntryProfile.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpIntegrationEntryProfile(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
