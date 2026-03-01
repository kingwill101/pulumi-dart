// ignore_for_file: unused_element, unnecessary_cast


/// A container to reference an id for any resource type. A `resource` in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API's. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.
class ResourceIdResponse {
  /// The resource type this id is for. At present, the valid types are: "organization", "folder", and "project".
  final String type;

  /// Creates a new [ResourceIdResponse].
  /// [type] The resource type this id is for. At present, the valid types are: "organization", "folder", and "project".
  ResourceIdResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      type: map['type'] as String,
    );
  }
}

