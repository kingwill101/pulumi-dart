// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A policy that specifies how requests intended for the route's backends are shadowed to a separate mirrored backend service. The load balancer doesn't wait for responses from the shadow service. Before sending traffic to the shadow service, the host or authority header is suffixed with -shadow.
class RequestMirrorPolicyResponseComputeV1 {
  /// The full or partial URL to the BackendService resource being mirrored to. The backend service configured for a mirroring policy must reference backends that are of the same type as the original backend service matched in the URL map. Serverless NEG backends are not currently supported as a mirrored backend service.
  final pulumi.Input<String> backendService;

  /// Creates a new [RequestMirrorPolicyResponseComputeV1].
  /// [backendService] The full or partial URL to the BackendService resource being mirrored to. The backend service configured for a mirroring policy must reference backends that are of the same type as the original backend service matched in the URL map. Serverless NEG backends are not currently supported as a mirrored backend service.
  const RequestMirrorPolicyResponseComputeV1({
    required this.backendService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
    };
  }

  factory RequestMirrorPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RequestMirrorPolicyResponseComputeV1(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
    );
  }
}

