// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_directory_object_get_directory_object_args_doc}
/// Arguments for getDirectoryObject.
/// {@endtemplate}
/// {@macro pulumi_index_get_directory_object_get_directory_object_args_doc}
class GetDirectoryObjectArgs {
  /// Specifies the Object ID of the directory object to look up.
  final pulumi.Input<String> objectId;

  /// Creates a new [GetDirectoryObjectArgs].
  /// [objectId] Specifies the Object ID of the directory object to look up.
  const GetDirectoryObjectArgs({
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
    };
  }

  factory GetDirectoryObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetDirectoryObjectArgs(
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
    );
  }
}

