// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_versions_goldengate_deployment_version_property.dart';

class GetGoldengateDeploymentVersionsGoldengateDeploymentVersion {
  /// The name of the Goldengate Deployment Version resource.
  final pulumi.Input<String> name;
  /// The Oracle Cloud Infrastructure OCID of the Goldengate Deployment Version resource.
  final pulumi.Input<String> ocid;
  /// The properties of the Goldengate Deployment Version resource.
  final pulumi.Input<List<GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty>> properties;

  /// Creates a new [GetGoldengateDeploymentVersionsGoldengateDeploymentVersion].
  /// [name] The name of the Goldengate Deployment Version resource.
  /// [ocid] The Oracle Cloud Infrastructure OCID of the Goldengate Deployment Version resource.
  /// [properties] The properties of the Goldengate Deployment Version resource.
  const GetGoldengateDeploymentVersionsGoldengateDeploymentVersion({
    required this.name,
    required this.ocid,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'ocid': ocid,
      'properties': pulumi.Input.mapInputValue<List<GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGoldengateDeploymentVersionsGoldengateDeploymentVersion.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentVersionsGoldengateDeploymentVersion(
      name: pulumi.Input.fromValue(map['name'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty>(map['properties']!, (value) => GetGoldengateDeploymentVersionsGoldengateDeploymentVersionProperty.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
