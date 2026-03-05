// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A substitute action transparently serves a different page than the one requested.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction {
  /// Optional. The address to redirect to. The target is a relative path in the current host. Example: "/blog/404.html".
  final pulumi.Input<String>? path;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction].
  /// [path] Optional. The address to redirect to. The target is a relative path in the current host. Example: "/blog/404.html".
  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

