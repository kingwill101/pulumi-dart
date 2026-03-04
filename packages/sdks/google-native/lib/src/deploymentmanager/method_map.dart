// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment Manager will call these methods during the events of creation/deletion/update/get/setIamPolicy
class MethodMap {
  /// The action identifier for the create method to be used for this collection
  final pulumi.Input<String>? create;

  /// The action identifier for the delete method to be used for this collection
  final pulumi.Input<String>? delete;

  /// The action identifier for the get method to be used for this collection
  final pulumi.Input<String>? get;

  /// The action identifier for the setIamPolicy method to be used for this collection
  final pulumi.Input<String>? setIamPolicy;

  /// The action identifier for the update method to be used for this collection
  final pulumi.Input<String>? update;

  /// Creates a new [MethodMap].
  /// [create] The action identifier for the create method to be used for this collection
  /// [delete] The action identifier for the delete method to be used for this collection
  /// [get] The action identifier for the get method to be used for this collection
  /// [setIamPolicy] The action identifier for the setIamPolicy method to be used for this collection
  /// [update] The action identifier for the update method to be used for this collection
  MethodMap({
    this.create,
    this.delete,
    this.get,
    this.setIamPolicy,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'delete': ?delete,
      'get': ?get,
      'setIamPolicy': ?setIamPolicy,
      'update': ?update,
    };
  }

  factory MethodMap.fromMap(Map<String, dynamic> map) {
    return MethodMap(
      create: (() {
        final guardedValue = map['create'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      delete: (() {
        final guardedValue = map['delete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      get: (() {
        final guardedValue = map['get'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      setIamPolicy: (() {
        final guardedValue = map['setIamPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      update: (() {
        final guardedValue = map['update'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
