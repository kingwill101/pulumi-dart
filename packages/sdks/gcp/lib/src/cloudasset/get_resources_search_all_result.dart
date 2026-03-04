// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcesSearchAllResult {
  /// Additional searchable attributes of this resource. Informational only. The exact set of attributes is subject to change. For example: project id, DNS name etc.
  final pulumi.Input<List<String>> additionalAttributes;

  /// The type of this resource.
  final pulumi.Input<String> assetType;

  /// One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes.
  final pulumi.Input<String> description;

  /// The display name of this resource.
  final pulumi.Input<String> displayName;

  /// Labels associated with this resource.
  final pulumi.Input<Map<String, String>> labels;

  /// Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
  final pulumi.Input<String> location;

  /// The full resource name. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  final pulumi.Input<String> name;

  /// Network tags associated with this resource.
  final pulumi.Input<List<String>> networkTags;

  /// The project that this resource belongs to, in the form of `projects/{project_number}`.
  final pulumi.Input<String> project;

  /// Creates a new [GetResourcesSearchAllResult].
  /// [additionalAttributes] Additional searchable attributes of this resource. Informational only. The exact set of attributes is subject to change. For example: project id, DNS name etc.
  /// [assetType] The type of this resource.
  /// [description] One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes.
  /// [displayName] The display name of this resource.
  /// [labels] Labels associated with this resource.
  /// [location] Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
  /// [name] The full resource name. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  /// [networkTags] Network tags associated with this resource.
  /// [project] The project that this resource belongs to, in the form of `projects/{project_number}`.
  GetResourcesSearchAllResult({
    required this.additionalAttributes,
    required this.assetType,
    required this.description,
    required this.displayName,
    required this.labels,
    required this.location,
    required this.name,
    required this.networkTags,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAttributes': additionalAttributes,
      'assetType': assetType,
      'description': description,
      'displayName': displayName,
      'labels': labels,
      'location': location,
      'name': name,
      'networkTags': networkTags,
      'project': project,
    };
  }

  factory GetResourcesSearchAllResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesSearchAllResult(
      additionalAttributes: pulumi.Input.fromValue(
        (map['additionalAttributes'] as List).cast<String>(),
      ),
      assetType: pulumi.Input.fromValue(map['assetType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkTags: pulumi.Input.fromValue(
        (map['networkTags'] as List).cast<String>(),
      ),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
