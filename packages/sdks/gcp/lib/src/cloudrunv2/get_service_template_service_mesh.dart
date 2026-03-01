// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateServiceMesh {
  /// The Mesh resource name. For more information see https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.meshes#resource:-mesh.
  final String mesh;

  /// Creates a new [GetServiceTemplateServiceMesh].
  /// [mesh] The Mesh resource name. For more information see https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.meshes#resource:-mesh.
  GetServiceTemplateServiceMesh({
    required this.mesh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mesh': mesh,
    };
  }

  factory GetServiceTemplateServiceMesh.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateServiceMesh(
      mesh: map['mesh'] as String,
    );
  }
}

