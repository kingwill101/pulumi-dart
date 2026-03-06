// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_instance_response.dart';

/// Runtime host for a workstation.
class HostResponse {
  /// Specifies a Compute Engine instance as the host.
  final pulumi.Input<GceInstanceResponse> gceInstance;

  /// Creates a new [HostResponse].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  const HostResponse({
    required this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstance': pulumi.Input.mapInputValue<GceInstanceResponse, Map<String, dynamic>>(gceInstance, (value) => value.toMap()),
    };
  }

  factory HostResponse.fromMap(Map<String, dynamic> map) {
    return HostResponse(
      gceInstance: pulumi.Input.fromValue(GceInstanceResponse.fromMap((map['gceInstance']! as Map).cast<String, dynamic>())),
    );
  }
}

