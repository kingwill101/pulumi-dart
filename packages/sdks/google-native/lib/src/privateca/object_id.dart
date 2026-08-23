// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
class ObjectId {
  /// The parts of an OID path. The most significant parts of the path come first.
  final pulumi.Input<List<int>> objectIdPath;

  /// Creates a new [ObjectId].
  /// [objectIdPath] The parts of an OID path. The most significant parts of the path come first.
  const ObjectId({
    required this.objectIdPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPath': objectIdPath,
    };
  }

  factory ObjectId.fromMap(Map<String, dynamic> map) {
    return ObjectId(
      objectIdPath: pulumi.Input.fromValue((map['objectIdPath'] as List).cast<int>()),
    );
  }
}
