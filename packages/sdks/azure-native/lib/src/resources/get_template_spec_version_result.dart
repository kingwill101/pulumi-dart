// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_template_artifact_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTemplateSpecVersion.
class GetTemplateSpecVersionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Template Spec version description.
  final String? description;
  /// String Id used to locate any resource on Azure.
  final String? id;
  /// An array of linked template artifacts.
  final List<LinkedTemplateArtifactResponse>? linkedTemplates;
  /// The location of the Template Spec Version. It must match the location of the parent Template Spec.
  final String? location;
  /// The main Azure Resource Manager template content.
  final dynamic mainTemplate;
  /// The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  final dynamic metadata;
  /// Name of this resource.
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Type of this resource.
  final String? type;
  /// The Azure Resource Manager template UI definition content.
  final dynamic uiFormDefinition;

  /// Creates a new [GetTemplateSpecVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Template Spec version description.
  /// [id] String Id used to locate any resource on Azure.
  /// [linkedTemplates] An array of linked template artifacts.
  /// [location] The location of the Template Spec Version. It must match the location of the parent Template Spec.
  /// [mainTemplate] The main Azure Resource Manager template content.
  /// [metadata] The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  /// [name] Name of this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] Type of this resource.
  /// [uiFormDefinition] The Azure Resource Manager template UI definition content.
  const GetTemplateSpecVersionResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.linkedTemplates,
    this.location,
    this.mainTemplate,
    this.metadata,
    this.name,
    this.systemData,
    this.tags,
    this.type,
    this.uiFormDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'linkedTemplates': ?(() { final guardedValue = linkedTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<LinkedTemplateArtifactResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'mainTemplate': ?mainTemplate,
      'metadata': ?metadata,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uiFormDefinition': ?uiFormDefinition,
    };
  }

  factory GetTemplateSpecVersionResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecVersionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedTemplates: (() { final guardedValue = map['linkedTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinkedTemplateArtifactResponse>(guardedValue, (value) => LinkedTemplateArtifactResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mainTemplate: (() { final guardedValue = map['mainTemplate']; if (guardedValue == null) return null; return guardedValue; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiFormDefinition: (() { final guardedValue = map['uiFormDefinition']; if (guardedValue == null) return null; return guardedValue; })(),
    );
  }
}
