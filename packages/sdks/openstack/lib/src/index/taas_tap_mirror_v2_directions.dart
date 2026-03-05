// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaasTapMirrorV2Directions {
  /// Declares ingress traffic to the port will be mirrored. The value
  /// is the identifier of the ERSPAN or GRE session between the source and destination,
  /// this must be unique within the project.
  final pulumi.Input<int>? in_;
  /// Declares egress traffic will be mirrored. The value is the
  /// identifier of the ERSPAN or GRE session between the source and destination,
  /// this must be unique within the project.
  final pulumi.Input<int>? out;

  /// Creates a new [TaasTapMirrorV2Directions].
  /// [in_] Declares ingress traffic to the port will be mirrored. The value
  /// [out] Declares egress traffic will be mirrored. The value is the
  TaasTapMirrorV2Directions({
    this.in_,
    this.out,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': ?in_,
      'out': ?out,
    };
  }

  factory TaasTapMirrorV2Directions.fromMap(Map<String, dynamic> map) {
    return TaasTapMirrorV2Directions(
      in_: (() { final guardedValue = map['in']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      out: (() { final guardedValue = map['out']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

