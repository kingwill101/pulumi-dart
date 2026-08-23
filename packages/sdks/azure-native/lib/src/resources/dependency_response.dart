// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_dependency_response.dart';

/// Deployment dependency information.
class DependencyResponse {
  /// The list of dependencies.
  final pulumi.Input<List<BasicDependencyResponse>>? dependsOn;
  /// The ID of the dependency.
  final pulumi.Input<String>? id;
  /// The dependency resource name.
  final pulumi.Input<String>? resourceName;
  /// The dependency resource type.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [DependencyResponse].
  /// [dependsOn] The list of dependencies.
  /// [id] The ID of the dependency.
  /// [resourceName] The dependency resource name.
  /// [resourceType] The dependency resource type.
  const DependencyResponse({
    this.dependsOn,
    this.id,
    this.resourceName,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<BasicDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<BasicDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'resourceName': ?resourceName,
      'resourceType': ?resourceType,
    };
  }

  factory DependencyResponse.fromMap(Map<String, dynamic> map) {
    return DependencyResponse(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BasicDependencyResponse>(guardedValue, (value) => BasicDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
