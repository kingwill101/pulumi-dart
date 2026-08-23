// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource ID definition used by parent to reference child resources.
class ResourceIdResponse {
  /// Resource ID of child resource.
  final pulumi.Input<String> id;

  /// Creates a new [ResourceIdResponse].
  /// [id] Resource ID of child resource.
  const ResourceIdResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
