// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Not supported by Cloud Run. SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext. When both are set, the values in SecurityContext take precedence.
class SecurityContext {
  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final pulumi.Input<int>? runAsUser;

  /// Creates a new [SecurityContext].
  /// [runAsUser] The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  const SecurityContext({
    this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runAsUser': ?runAsUser,
    };
  }

  factory SecurityContext.fromMap(Map<String, dynamic> map) {
    return SecurityContext(
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
