// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_id.dart';

/// An X509Extension specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
class X509Extension {
  /// Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  final pulumi.Input<bool>? critical;
  /// The OID for this X.509 extension.
  final pulumi.Input<ObjectId> objectId;
  /// The value of this X.509 extension.
  final pulumi.Input<String> value;

  /// Creates a new [X509Extension].
  /// [critical] Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  /// [objectId] The OID for this X.509 extension.
  /// [value] The value of this X.509 extension.
  const X509Extension({
    this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?critical,
      'objectId': pulumi.Input.mapInputValue<ObjectId, Map<String, dynamic>>(objectId, (value) => value.toMap()),
      'value': value,
    };
  }

  factory X509Extension.fromMap(Map<String, dynamic> map) {
    return X509Extension(
      critical: (() { final guardedValue = map['critical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectId: pulumi.Input.fromValue(ObjectId.fromMap((map['objectId']! as Map).cast<String, dynamic>())),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
