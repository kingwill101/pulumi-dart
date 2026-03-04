// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the EventHub Cluster resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the resource group in which the EventHub Cluster exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The SKU name of the EventHub Cluster. The only supported value at this time is `Dedicated_1`.
  final pulumi.Input<String>? skuName;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventHub Cluster resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventHub Cluster exists. Changing this forces a new resource to be created.
  /// [skuName] The SKU name of the EventHub Cluster. The only supported value at this time is `Dedicated_1`.
  /// [tags] A mapping of tags to assign to the resource.
  ClusterState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuName: (() {
        final guardedValue = map['skuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
