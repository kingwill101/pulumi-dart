// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_response.dart';

class PlatformCapabilitiesResponse {
  final pulumi.Input<ConfidentialComputeResponse?>? confidentialCompute;

  /// Creates a new [PlatformCapabilitiesResponse].
  /// [confidentialCompute] Optional.
  const PlatformCapabilitiesResponse({
    this.confidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialCompute': ?pulumi.Input.mapOptionalInputValue<ConfidentialComputeResponse, Map<String, dynamic>>(confidentialCompute, (value) => value.toMap()),
    };
  }

  factory PlatformCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return PlatformCapabilitiesResponse(
      confidentialCompute: (() { final guardedValue = map['confidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialComputeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
