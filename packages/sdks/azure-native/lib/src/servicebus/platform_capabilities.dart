// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute.dart';

class PlatformCapabilities {
  final pulumi.Input<ConfidentialCompute?>? confidentialCompute;

  /// Creates a new [PlatformCapabilities].
  /// [confidentialCompute] Optional.
  const PlatformCapabilities({
    this.confidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialCompute': ?pulumi.Input.mapOptionalInputValue<ConfidentialCompute, Map<String, dynamic>>(confidentialCompute, (value) => value.toMap()),
    };
  }

  factory PlatformCapabilities.fromMap(Map<String, dynamic> map) {
    return PlatformCapabilities(
      confidentialCompute: (() { final guardedValue = map['confidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialCompute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
