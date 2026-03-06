// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resourceId model.
class ResourceReferenceResponse {
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final pulumi.Input<String> id;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  const ResourceReferenceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

