// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateServiceMesh {
  /// The Mesh resource name. For more information see https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.meshes#resource:-mesh.
  final pulumi.Input<String?>? mesh;

  /// Creates a new [ServiceTemplateServiceMesh].
  /// [mesh] The Mesh resource name. For more information see https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.meshes#resource:-mesh.
  const ServiceTemplateServiceMesh({
    this.mesh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mesh': ?mesh,
    };
  }

  factory ServiceTemplateServiceMesh.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateServiceMesh(
      mesh: (() { final guardedValue = map['mesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
