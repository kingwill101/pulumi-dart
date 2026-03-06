// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllowedResourceNameResponse {
  /// Get action verb.
  final pulumi.Input<String>? getActionVerb;
  /// Resource name.
  final pulumi.Input<String>? name;

  /// Creates a new [AllowedResourceNameResponse].
  /// [getActionVerb] Get action verb.
  /// [name] Resource name.
  const AllowedResourceNameResponse({
    this.getActionVerb,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'getActionVerb': ?getActionVerb,
      'name': ?name,
    };
  }

  factory AllowedResourceNameResponse.fromMap(Map<String, dynamic> map) {
    return AllowedResourceNameResponse(
      getActionVerb: (() { final guardedValue = map['getActionVerb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

