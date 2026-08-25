// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheOriginOriginRedirect {
  /// The set of redirect response codes that the CDN
  /// follows. Values of
  /// [RedirectConditions](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins#redirectconditions)
  /// are accepted.
  final pulumi.Input<List<String>?>? redirectConditions;

  /// Creates a new [EdgeCacheOriginOriginRedirect].
  /// [redirectConditions] The set of redirect response codes that the CDN
  const EdgeCacheOriginOriginRedirect({
    this.redirectConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectConditions': ?redirectConditions,
    };
  }

  factory EdgeCacheOriginOriginRedirect.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginOriginRedirect(
      redirectConditions: (() { final guardedValue = map['redirectConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
