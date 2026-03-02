// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'template_spec_version_info_response.dart';

/// Result data returned by getTemplateSpec.
class GetTemplateSpecResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Template Spec description.
  final String? description;
  /// Template Spec display name.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// The location of the Template Spec. It cannot be changed after Template Spec creation. It must be one of the supported Azure locations.
  final String location;
  /// The Template Spec metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  final dynamic metadata;
  /// Name of this resource.
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Type of this resource.
  final String type;
  /// High-level information about the versions within this Template Spec. The keys are the version names. Only populated if the $expand query parameter is set to 'versions'.
  final Map<String, TemplateSpecVersionInfoResponse> versions;

  /// Creates a new [GetTemplateSpecResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Template Spec description.
  /// [displayName] Template Spec display name.
  /// [id] String Id used to locate any resource on Azure.
  /// [location] The location of the Template Spec. It cannot be changed after Template Spec creation. It must be one of the supported Azure locations.
  /// [metadata] The Template Spec metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  /// [name] Name of this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] Type of this resource.
  /// [versions] High-level information about the versions within this Template Spec. The keys are the version names. Only populated if the $expand query parameter is set to 'versions'.
  GetTemplateSpecResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.location,
    this.metadata,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'location': location,
      'metadata': ?metadata,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'versions': pulumi.Input.encodeMapValues<TemplateSpecVersionInfoResponse, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetTemplateSpecResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      location: map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata']!,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      versions: pulumi.Input.decodeMapValues<TemplateSpecVersionInfoResponse>(map['versions'], (value) => TemplateSpecVersionInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

