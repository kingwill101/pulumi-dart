// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GCP vlan attachment.
class IntakeVlanAttachment {
  /// Identifier of the VLAN attachment.
  final pulumi.Input<String>? id;

  /// Attachment pairing key.
  final pulumi.Input<String>? pairingKey;

  /// Creates a new [IntakeVlanAttachment].
  /// [id] Identifier of the VLAN attachment.
  /// [pairingKey] Attachment pairing key.
  IntakeVlanAttachment({this.id, this.pairingKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'pairingKey': ?pairingKey};
  }

  factory IntakeVlanAttachment.fromMap(Map<String, dynamic> map) {
    return IntakeVlanAttachment(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pairingKey: (() {
        final guardedValue = map['pairingKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
