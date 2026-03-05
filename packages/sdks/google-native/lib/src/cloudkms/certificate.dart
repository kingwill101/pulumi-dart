// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.
class Certificate {
  /// The raw certificate bytes in DER format.
  final pulumi.Input<String> rawDer;

  /// Creates a new [Certificate].
  /// [rawDer] The raw certificate bytes in DER format.
  Certificate({
    required this.rawDer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rawDer': rawDer,
    };
  }

  factory Certificate.fromMap(Map<String, dynamic> map) {
    return Certificate(
      rawDer: pulumi.Input.fromValue(map['rawDer'] as String),
    );
  }
}

