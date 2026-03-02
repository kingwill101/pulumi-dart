// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an operation to be performed on the object
class StorageTaskOperationResponse {
  /// The operation to be performed on the object.
  final pulumi.Input<String> name;
  /// Action to be taken when the operation fails for a object.
  final pulumi.Input<String>? onFailure;
  /// Action to be taken when the operation is successful for a object.
  final pulumi.Input<String>? onSuccess;
  /// Key-value parameters for the operation.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [StorageTaskOperationResponse].
  /// [name] The operation to be performed on the object.
  /// [onFailure] Action to be taken when the operation fails for a object.
  /// [onSuccess] Action to be taken when the operation is successful for a object.
  /// [parameters] Key-value parameters for the operation.
  StorageTaskOperationResponse({
    required this.name,
    this.onFailure,
    this.onSuccess,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'onFailure': ?onFailure,
      'onSuccess': ?onSuccess,
      'parameters': ?parameters,
    };
  }

  factory StorageTaskOperationResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskOperationResponse(
      name: (map['name'] as String).input(),
      onFailure: map['onFailure'] == null ? null : (map['onFailure']! as String).input(),
      onSuccess: map['onSuccess'] == null ? null : (map['onSuccess']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

