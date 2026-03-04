// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment dependency information.
class BasicDependencyResponse {
  /// The ID of the dependency.
  final pulumi.Input<String>? id;

  /// The dependency resource name.
  final pulumi.Input<String>? resourceName;

  /// The dependency resource type.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [BasicDependencyResponse].
  /// [id] The ID of the dependency.
  /// [resourceName] The dependency resource name.
  /// [resourceType] The dependency resource type.
  BasicDependencyResponse({this.id, this.resourceName, this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'resourceName': ?resourceName,
      'resourceType': ?resourceType,
    };
  }

  factory BasicDependencyResponse.fromMap(Map<String, dynamic> map) {
    return BasicDependencyResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceName: (() {
        final guardedValue = map['resourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
