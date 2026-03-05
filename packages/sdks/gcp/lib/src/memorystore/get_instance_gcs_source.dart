// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGcsSource {
  /// URIs of the GCS objects to import.
  /// Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  final pulumi.Input<List<String>> uris;

  /// Creates a new [GetInstanceGcsSource].
  /// [uris] URIs of the GCS objects to import.
  GetInstanceGcsSource({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uris': uris,
    };
  }

  factory GetInstanceGcsSource.fromMap(Map<String, dynamic> map) {
    return GetInstanceGcsSource(
      uris: pulumi.Input.fromValue((map['uris'] as List).cast<String>()),
    );
  }
}

