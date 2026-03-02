// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PrivateEndpointModelsResourceId
class ResourceIdResponse {
  /// id name
  final pulumi.Input<String> id;

  /// Creates a new [ResourceIdResponse].
  /// [id] id name
  ResourceIdResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      id: (map['id'] as String).input(),
    );
  }
}

