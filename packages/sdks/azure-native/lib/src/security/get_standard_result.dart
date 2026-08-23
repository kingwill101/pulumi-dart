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
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of the resource
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// standard type (Custom or BuiltIn only currently)
  final String standardType;
  /// List of all standard supported clouds.
  final List<String>? supportedClouds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStandardResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] category of the standard provided
  /// [components] List of component objects containing component unique keys (such as assessment keys) to apply to standard scope.  Currently only supports assessment keys.
  /// [description] description of the standard
  /// [displayName] display name of the standard, equivalent to the standardId
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of the resource
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [standardType] standard type (Custom or BuiltIn only currently)
  /// [supportedClouds] List of all standard supported clouds.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStandardResult({
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
      'components': ?(() { final guardedValue = components; if (guardedValue == null) return null; return pulumi.Input.encodeList<StandardComponentPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StandardComponentPropertiesResponse>(guardedValue, (value) => StandardComponentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      standardType: map['standardType'] as String,
      supportedClouds: (() { final guardedValue = map['supportedClouds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
