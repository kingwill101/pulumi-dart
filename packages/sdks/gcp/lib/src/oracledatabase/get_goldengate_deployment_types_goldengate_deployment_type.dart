// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGoldengateDeploymentTypesGoldengateDeploymentType {
  /// The category of the Goldengate Deployment Type resource.
  final pulumi.Input<String> category;
  /// The connection types of the Goldengate Deployment Type resource.
  final pulumi.Input<List<String>> connectionTypes;
  /// The default username of the Goldengate Deployment Type resource.
  final pulumi.Input<String> defaultUsername;
  /// The deployment type of the Goldengate Deployment Type resource.
  final pulumi.Input<String> deploymentType;
  /// The display name of the Goldengate Deployment Type resource.
  final pulumi.Input<String> displayName;
  /// The name of the Goldengate Deployment Type resource.
  final pulumi.Input<String> name;
  /// The OGG version of the Goldengate Deployment Type resource.
  final pulumi.Input<String> oggVersion;
  /// The source technologies of the Goldengate Deployment Type resource.
  final pulumi.Input<List<String>> sourceTechnologies;
  /// The supported capabilities of the Goldengate Deployment Type resource.
  final pulumi.Input<List<String>> supportedCapabilities;
  /// The supported technologies URL of the Goldengate Deployment Type resource.
  final pulumi.Input<String> supportedTechnologiesUrl;
  /// The target technologies of the Goldengate Deployment Type resource.
  final pulumi.Input<List<String>> targetTechnologies;

  /// Creates a new [GetGoldengateDeploymentTypesGoldengateDeploymentType].
  /// [category] The category of the Goldengate Deployment Type resource.
  /// [connectionTypes] The connection types of the Goldengate Deployment Type resource.
  /// [defaultUsername] The default username of the Goldengate Deployment Type resource.
  /// [deploymentType] The deployment type of the Goldengate Deployment Type resource.
  /// [displayName] The display name of the Goldengate Deployment Type resource.
  /// [name] The name of the Goldengate Deployment Type resource.
  /// [oggVersion] The OGG version of the Goldengate Deployment Type resource.
  /// [sourceTechnologies] The source technologies of the Goldengate Deployment Type resource.
  /// [supportedCapabilities] The supported capabilities of the Goldengate Deployment Type resource.
  /// [supportedTechnologiesUrl] The supported technologies URL of the Goldengate Deployment Type resource.
  /// [targetTechnologies] The target technologies of the Goldengate Deployment Type resource.
  const GetGoldengateDeploymentTypesGoldengateDeploymentType({
    required this.category,
    required this.connectionTypes,
    required this.defaultUsername,
    required this.deploymentType,
    required this.displayName,
    required this.name,
    required this.oggVersion,
    required this.sourceTechnologies,
    required this.supportedCapabilities,
    required this.supportedTechnologiesUrl,
    required this.targetTechnologies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'connectionTypes': connectionTypes,
      'defaultUsername': defaultUsername,
      'deploymentType': deploymentType,
      'displayName': displayName,
      'name': name,
      'oggVersion': oggVersion,
      'sourceTechnologies': sourceTechnologies,
      'supportedCapabilities': supportedCapabilities,
      'supportedTechnologiesUrl': supportedTechnologiesUrl,
      'targetTechnologies': targetTechnologies,
    };
  }

  factory GetGoldengateDeploymentTypesGoldengateDeploymentType.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentTypesGoldengateDeploymentType(
      category: pulumi.Input.fromValue(map['category'] as String),
      connectionTypes: pulumi.Input.fromValue((map['connectionTypes'] as List).cast<String>()),
      defaultUsername: pulumi.Input.fromValue(map['defaultUsername'] as String),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      oggVersion: pulumi.Input.fromValue(map['oggVersion'] as String),
      sourceTechnologies: pulumi.Input.fromValue((map['sourceTechnologies'] as List).cast<String>()),
      supportedCapabilities: pulumi.Input.fromValue((map['supportedCapabilities'] as List).cast<String>()),
      supportedTechnologiesUrl: pulumi.Input.fromValue(map['supportedTechnologiesUrl'] as String),
      targetTechnologies: pulumi.Input.fromValue((map['targetTechnologies'] as List).cast<String>()),
    );
  }
}
