// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1beta1_intoto_signature.dart';
import 'link.dart';

/// This corresponds to a signed in-toto link - it is made up of one or more signatures and the in-toto link itself. This is used for occurrences of a Grafeas in-toto note.
class GrafeasV1beta1IntotoDetails {
  final pulumi.Input<List<GrafeasV1beta1IntotoSignature>>? signatures;
  final pulumi.Input<Link>? signed;

  /// Creates a new [GrafeasV1beta1IntotoDetails].
  /// [signatures] Optional.
  /// [signed] Optional.
  GrafeasV1beta1IntotoDetails({
    this.signatures,
    this.signed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<GrafeasV1beta1IntotoSignature>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<GrafeasV1beta1IntotoSignature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'signed': ?pulumi.Input.mapOptionalInputValue<Link, Map<String, dynamic>>(signed, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1IntotoDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoDetails(
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrafeasV1beta1IntotoSignature>(guardedValue, (value) => GrafeasV1beta1IntotoSignature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      signed: (() { final guardedValue = map['signed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Link.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

