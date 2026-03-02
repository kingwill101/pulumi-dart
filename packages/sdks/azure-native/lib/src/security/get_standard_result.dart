// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_component_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStandard.
class GetStandardResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// category of the standard provided
  final String? category;
  /// List of component objects containing component unique keys (such as assessment keys) to apply to standard scope.  Currently only supports assessment keys.
  final List<StandardComponentPropertiesResponse>? components;
  /// description of the standard
  final String? description;
  /// display name of the standard, equivalent to the standardId
  final String? displayName;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  final String? etag;
  /// Resource Id
  final String id;
  /// Kind of the resource
  final String? kind;
  /// Location where the resource is stored
  final String? location;
  /// Resource name
  final String name;
  /// standard type (Custom or BuiltIn only currently)
  final String standardType;
  /// List of all standard supported clouds.
  final List<String>? supportedClouds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// A list of key value pairs that describe the resource.
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetStandardResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] category of the standard provided
  /// [components] List of component objects containing component unique keys (such as assessment keys) to apply to standard scope.  Currently only supports assessment keys.
  /// [description] description of the standard
  /// [displayName] display name of the standard, equivalent to the standardId
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [id] Resource Id
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [name] Resource name
  /// [standardType] standard type (Custom or BuiltIn only currently)
  /// [supportedClouds] List of all standard supported clouds.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] A list of key value pairs that describe the resource.
  /// [type] Resource type
  GetStandardResult({
    required this.azureApiVersion,
    this.category,
    this.components,
    this.description,
    this.displayName,
    this.etag,
    required this.id,
    this.kind,
    this.location,
    required this.name,
    required this.standardType,
    this.supportedClouds,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'category': ?category,
      'components': ?components == null ? null : pulumi.Input.encodeList<StandardComponentPropertiesResponse, Map<String, dynamic>>(components!, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'standardType': standardType,
      'supportedClouds': ?supportedClouds,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetStandardResult.fromMap(Map<String, dynamic> map) {
    return GetStandardResult(
      azureApiVersion: map['azureApiVersion'] as String,
      category: map['category'] == null ? null : map['category']! as String,
      components: map['components'] == null ? null : pulumi.Input.decodeList<StandardComponentPropertiesResponse>(map['components']!, (value) => StandardComponentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      standardType: map['standardType'] as String,
      supportedClouds: map['supportedClouds'] == null ? null : (map['supportedClouds']! as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

