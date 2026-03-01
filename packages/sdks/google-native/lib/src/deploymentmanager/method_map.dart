// ignore_for_file: unused_element, unnecessary_cast


/// Deployment Manager will call these methods during the events of creation/deletion/update/get/setIamPolicy
class MethodMap {
  /// The action identifier for the create method to be used for this collection
  final String? create;
  /// The action identifier for the delete method to be used for this collection
  final String? delete;
  /// The action identifier for the get method to be used for this collection
  final String? get;
  /// The action identifier for the setIamPolicy method to be used for this collection
  final String? setIamPolicy;
  /// The action identifier for the update method to be used for this collection
  final String? update;

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
      create: map['create'] == null ? null : map['create'] as String,
      delete: map['delete'] == null ? null : map['delete'] as String,
      get: map['get'] == null ? null : map['get'] as String,
      setIamPolicy: map['setIamPolicy'] == null ? null : map['setIamPolicy'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}

