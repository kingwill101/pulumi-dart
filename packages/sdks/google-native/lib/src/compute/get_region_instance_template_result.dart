// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_response.dart';
import 'source_instance_params_response.dart';

/// Result data returned by getRegionInstanceTemplate.
class GetRegionInstanceTemplateResult {
  /// The creation timestamp for this instance template in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// The resource type, which is always compute#instanceTemplate for instance templates.
  final String? kind;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The instance properties for this instance template.
  final InstancePropertiesResponse? properties;
  /// URL of the region where the instance template resides. Only applicable for regional resources.
  final String? region;
  /// The URL for this instance template. The server defines this URL.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final String? sourceInstance;
  /// The source instance params to use to create this instance template.
  final SourceInstanceParamsResponse? sourceInstanceParams;

  /// Creates a new [GetRegionInstanceTemplateResult].
  /// [creationTimestamp] The creation timestamp for this instance template in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] The resource type, which is always compute#instanceTemplate for instance templates.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [properties] The instance properties for this instance template.
  /// [region] URL of the region where the instance template resides. Only applicable for regional resources.
  /// [selfLink] The URL for this instance template. The server defines this URL.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [sourceInstance] The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [sourceInstanceParams] The source instance params to use to create this instance template.
  const GetRegionInstanceTemplateResult({
    this.creationTimestamp,
    this.description,
    this.kind,
    this.name,
    this.properties,
    this.region,
    this.selfLink,
    this.selfLinkWithId,
    this.sourceInstance,
    this.sourceInstanceParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'kind': ?kind,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'region': ?region,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceParams': ?sourceInstanceParams?.toMap(),
    };
  }

  factory GetRegionInstanceTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateResult(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return InstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstance: (() { final guardedValue = map['sourceInstance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstanceParams: (() { final guardedValue = map['sourceInstanceParams']; if (guardedValue == null) return null; return SourceInstanceParamsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
