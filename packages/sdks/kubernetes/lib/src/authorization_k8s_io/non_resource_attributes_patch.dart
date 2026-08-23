// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
class NonResourceAttributesPatch {
  /// path is the URL path of the request
  final pulumi.Input<String>? path;
  /// verb is the standard HTTP verb
  final pulumi.Input<String>? verb;

  /// Creates a new [NonResourceAttributesPatch].
  /// [path] path is the URL path of the request
  /// [verb] verb is the standard HTTP verb
  const NonResourceAttributesPatch({
    this.path,
    this.verb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'verb': ?verb,
    };
  }

  factory NonResourceAttributesPatch.fromMap(Map<String, dynamic> map) {
    return NonResourceAttributesPatch(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verb: (() { final guardedValue = map['verb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
