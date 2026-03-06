// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_lock_get_lock_args_doc}
/// Arguments for getLock.
/// {@endtemplate}
/// {@macro pulumi_index_get_lock_get_lock_args_doc}
class GetLockArgs {
  /// The unique ID of the Lock.
  final pulumi.Input<int> id;

  /// Creates a new [GetLockArgs].
  /// [id] The unique ID of the Lock.
  const GetLockArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetLockArgs.fromMap(Map<String, dynamic> map) {
    return GetLockArgs(
      id: pulumi.Input.fromValue(map['id'] as int),
    );
  }
}

