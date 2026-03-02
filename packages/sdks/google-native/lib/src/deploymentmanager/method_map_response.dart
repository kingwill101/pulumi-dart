// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment Manager will call these methods during the events of creation/deletion/update/get/setIamPolicy
class MethodMapResponse {
  /// The action identifier for the create method to be used for this collection
  final pulumi.Input<String> create;
  /// The action identifier for the delete method to be used for this collection
  final pulumi.Input<String> delete;
  /// The action identifier for the get method to be used for this collection
  final pulumi.Input<String> get;
  /// The action identifier for the setIamPolicy method to be used for this collection
  final pulumi.Input<String> setIamPolicy;
  /// The action identifier for the update method to be used for this collection
  final pulumi.Input<String> update;

  /// Creates a new [MethodMapResponse].
  /// [create] The action identifier for the create method to be used for this collection
  /// [delete] The action identifier for the delete method to be used for this collection
  /// [get] The action identifier for the get method to be used for this collection
  /// [setIamPolicy] The action identifier for the setIamPolicy method to be used for this collection
  /// [update] The action identifier for the update method to be used for this collection
  MethodMapResponse({
    required this.create,
    required this.delete,
    required this.get,
    required this.setIamPolicy,
    required this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': create,
      'delete': delete,
      'get': get,
      'setIamPolicy': setIamPolicy,
      'update': update,
    };
  }

  factory MethodMapResponse.fromMap(Map<String, dynamic> map) {
    return MethodMapResponse(
      create: (map['create'] as String).input(),
      delete: (map['delete'] as String).input(),
      get: (map['get'] as String).input(),
      setIamPolicy: (map['setIamPolicy'] as String).input(),
      update: (map['update'] as String).input(),
    );
  }
}

