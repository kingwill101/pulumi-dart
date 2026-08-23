// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
class NonResourceAttributesPatchAuthorizationK8sIoV1beta1 {
  /// Path is the URL path of the request
  final pulumi.Input<String>? path;
  /// Verb is the standard HTTP verb
  final pulumi.Input<String>? verb;

  /// Creates a new [NonResourceAttributesPatchAuthorizationK8sIoV1beta1].
  /// [path] Path is the URL path of the request
  /// [verb] Verb is the standard HTTP verb
  const NonResourceAttributesPatchAuthorizationK8sIoV1beta1({
    this.path,
    this.verb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'verb': ?verb,
    };
  }

  factory NonResourceAttributesPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return NonResourceAttributesPatchAuthorizationK8sIoV1beta1(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verb: (() { final guardedValue = map['verb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
