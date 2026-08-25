// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy {
  /// The full or partial URL to the RegionBackendService resource being mirrored to.
  /// The backend service configured for a mirroring policy must reference backends that are of the same type as the original backend service matched in the URL map.
  /// Serverless NEG backends are not currently supported as a mirrored backend service.
  final pulumi.Input<String> backendService;
  /// (Optional, Beta)
  /// The percentage of requests to be mirrored to backendService.
  /// The value must be between 0.0 and 100.0 inclusive.
  final pulumi.Input<double?>? mirrorPercent;

  /// Creates a new [RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy].
  /// [backendService] The full or partial URL to the RegionBackendService resource being mirrored to.
  /// [mirrorPercent] (Optional, Beta)
  const RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy({
    required this.backendService,
    this.mirrorPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'mirrorPercent': ?mirrorPercent,
    };
  }

  factory RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      mirrorPercent: (() { final guardedValue = map['mirrorPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
