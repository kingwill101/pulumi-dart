// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
class ServiceAccountTokenProjectionPatch {
  /// audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
  final pulumi.Input<String?>? audience;
  /// expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
  final pulumi.Input<int?>? expirationSeconds;
  /// path is the path relative to the mount point of the file to project the token into.
  final pulumi.Input<String?>? path;
  /// user is Optional: The owner UID of the created file. If specified, the item-level user field takes precedence over defaultUser. (Alpha) This field requires the AtomicWriteVolumeUserFields feature gate to be enabled.
  final pulumi.Input<int?>? user;

  /// Creates a new [ServiceAccountTokenProjectionPatch].
  /// [audience] audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
  /// [expirationSeconds] expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
  /// [path] path is the path relative to the mount point of the file to project the token into.
  /// [user] user is Optional: The owner UID of the created file. If specified, the item-level user field takes precedence over defaultUser. (Alpha) This field requires the AtomicWriteVolumeUserFields feature gate to be enabled.
  const ServiceAccountTokenProjectionPatch({
    this.audience,
    this.expirationSeconds,
    this.path,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'expirationSeconds': ?expirationSeconds,
      'path': ?path,
      'user': ?user,
    };
  }

  factory ServiceAccountTokenProjectionPatch.fromMap(Map<String, dynamic> map) {
    return ServiceAccountTokenProjectionPatch(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationSeconds: (() { final guardedValue = map['expirationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
