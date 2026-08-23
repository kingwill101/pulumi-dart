// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSearchAllResourcesResult {
  /// The type of this resource.
  final pulumi.Input<String> assetType;
  /// The create timestamp of this resource, at which the resource was created.
  final pulumi.Input<String> createTime;
  /// One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes.
  final pulumi.Input<String> description;
  /// The display name of this resource.
  final pulumi.Input<String> displayName;
  /// The folder(s) that this resource belongs to, in the form of `folders/{FOLDER_NUMBER}`. This field is available when the resource belongs to one or more folders.
  final pulumi.Input<List<String>> folders;
  /// The Cloud KMS CryptoKey names or CryptoKeyVersion names. This field is available only when the resource's Protobuf contains it.
  final pulumi.Input<List<String>> kmsKeys;
  /// Labels associated with this resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
  final pulumi.Input<String> location;
  /// The full resource name of this resource.. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  final pulumi.Input<String> name;
  /// Network tags associated with this resource.
  final pulumi.Input<List<String>> networkTags;
  /// The organization that this resource belongs to, in the form of `organizations/{ORGANIZATION_NUMBER}`. This field is available when the resource belongs to an organization.
  final pulumi.Input<String> organization;
  /// The type of this resource's immediate parent, if there is one.
  final pulumi.Input<String> parentAssetType;
  /// The full resource name of this resource's parent, if it has one.
  final pulumi.Input<String> parentFullResourceName;
  /// The project that this resource belongs to, in the form of `projects/{project_number}`.
  final pulumi.Input<String> project;
  /// The state of this resource.
  final pulumi.Input<String> state;
  /// The last update timestamp of this resource, at which the resource was last modified or deleted.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetSearchAllResourcesResult].
  /// [assetType] The type of this resource.
  /// [createTime] The create timestamp of this resource, at which the resource was created.
  /// [description] One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes.
  /// [displayName] The display name of this resource.
  /// [folders] The folder(s) that this resource belongs to, in the form of `folders/{FOLDER_NUMBER}`. This field is available when the resource belongs to one or more folders.
  /// [kmsKeys] The Cloud KMS CryptoKey names or CryptoKeyVersion names. This field is available only when the resource's Protobuf contains it.
  /// [labels] Labels associated with this resource.
  /// [location] Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
  /// [name] The full resource name of this resource.. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  /// [networkTags] Network tags associated with this resource.
  /// [organization] The organization that this resource belongs to, in the form of `organizations/{ORGANIZATION_NUMBER}`. This field is available when the resource belongs to an organization.
  /// [parentAssetType] The type of this resource's immediate parent, if there is one.
  /// [parentFullResourceName] The full resource name of this resource's parent, if it has one.
  /// [project] The project that this resource belongs to, in the form of `projects/{project_number}`.
  /// [state] The state of this resource.
  /// [updateTime] The last update timestamp of this resource, at which the resource was last modified or deleted.
  const GetSearchAllResourcesResult({
    required this.assetType,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.folders,
    required this.kmsKeys,
    required this.labels,
    required this.location,
    required this.name,
    required this.networkTags,
    required this.organization,
    required this.parentAssetType,
    required this.parentFullResourceName,
    required this.project,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetType': assetType,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'folders': folders,
      'kmsKeys': kmsKeys,
      'labels': labels,
      'location': location,
      'name': name,
      'networkTags': networkTags,
      'organization': organization,
      'parentAssetType': parentAssetType,
      'parentFullResourceName': parentFullResourceName,
      'project': project,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetSearchAllResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetSearchAllResourcesResult(
      assetType: pulumi.Input.fromValue(map['assetType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      folders: pulumi.Input.fromValue((map['folders'] as List).cast<String>()),
      kmsKeys: pulumi.Input.fromValue((map['kmsKeys'] as List).cast<String>()),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkTags: pulumi.Input.fromValue((map['networkTags'] as List).cast<String>()),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      parentAssetType: pulumi.Input.fromValue(map['parentAssetType'] as String),
      parentFullResourceName: pulumi.Input.fromValue(map['parentFullResourceName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
