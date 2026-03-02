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
  NonResourceAttributesPatchAuthorizationK8sIoV1beta1({
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
      path: map['path'] == null ? null : (map['path'] as String).input(),
      verb: map['verb'] == null ? null : (map['verb'] as String).input(),
    );
  }
}

