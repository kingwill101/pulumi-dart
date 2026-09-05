// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
class NonResourceAttributes {
  /// path is the URL path of the request
  final pulumi.Input<String?>? path;
  /// verb is the standard HTTP verb
  final pulumi.Input<String?>? verb;

  /// Creates a new [NonResourceAttributes].
  /// [path] path is the URL path of the request
  /// [verb] verb is the standard HTTP verb
  const NonResourceAttributes({
    this.path,
    this.verb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'verb': ?verb,
    };
  }

  factory NonResourceAttributes.fromMap(Map<String, dynamic> map) {
    return NonResourceAttributes(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verb: (() { final guardedValue = map['verb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
