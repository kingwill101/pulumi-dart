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
      create: map['create'] == null ? null : (map['create']! as String).input(),
      delete: map['delete'] == null ? null : (map['delete']! as String).input(),
      get: map['get'] == null ? null : (map['get']! as String).input(),
      setIamPolicy: map['setIamPolicy'] == null ? null : (map['setIamPolicy']! as String).input(),
      update: map['update'] == null ? null : (map['update']! as String).input(),
    );
  }
}

