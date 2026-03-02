// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AllowedHostPath defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined. Deprecated: use AllowedHostPath from policy API Group instead.
class AllowedHostPathPatch {
  /// pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.
  ///
  /// Examples: `/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`
  final pulumi.Input<String>? pathPrefix;
  /// when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [AllowedHostPathPatch].
  /// [pathPrefix] pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.
  /// [readOnly] when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly.
  AllowedHostPathPatch({
    this.pathPrefix,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathPrefix': ?pathPrefix,
      'readOnly': ?readOnly,
    };
  }

  factory AllowedHostPathPatch.fromMap(Map<String, dynamic> map) {
    return AllowedHostPathPatch(
      pathPrefix: map['pathPrefix'] == null ? null : (map['pathPrefix'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
    );
  }
}

