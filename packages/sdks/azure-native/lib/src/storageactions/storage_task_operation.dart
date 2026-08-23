// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an operation to be performed on the object
class StorageTaskOperation {
  /// The operation to be performed on the object.
  final pulumi.Input<String> name;
  /// Action to be taken when the operation fails for a object.
  final pulumi.Input<String>? onFailure;
  /// Action to be taken when the operation is successful for a object.
  final pulumi.Input<String>? onSuccess;
  /// Key-value parameters for the operation.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [StorageTaskOperation].
  /// [name] The operation to be performed on the object.
  /// [onFailure] Action to be taken when the operation fails for a object.
  /// [onSuccess] Action to be taken when the operation is successful for a object.
  /// [parameters] Key-value parameters for the operation.
  const StorageTaskOperation({
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

  factory StorageTaskOperation.fromMap(Map<String, dynamic> map) {
    return StorageTaskOperation(
      name: pulumi.Input.fromValue(map['name'] as String),
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onSuccess: (() { final guardedValue = map['onSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
