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
  DependencyResponse({
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
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<BasicDependencyResponse>(map['dependsOn']!, (value) => BasicDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
    );
  }
}

