// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServiceEndpointPolicyDefinition.
class GetServiceEndpointPolicyDefinitionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A description for this rule. Restricted to 140 chars.
  final String? description;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Resource ID.
  final String? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;

  /// The provisioning state of the service endpoint policy definition resource.
  final String provisioningState;

  /// Service endpoint name.
  final String? service;

  /// A list of service resources.
  final List<String>? serviceResources;

  /// The type of the resource.
  final String? type;

  /// Creates a new [GetServiceEndpointPolicyDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service endpoint policy definition resource.
  /// [service] Service endpoint name.
  /// [serviceResources] A list of service resources.
  /// [type] The type of the resource.
  GetServiceEndpointPolicyDefinitionResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.service,
    this.serviceResources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'service': ?service,
      'serviceResources': ?serviceResources,
      'type': ?type,
    };
  }

  factory GetServiceEndpointPolicyDefinitionResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceEndpointPolicyDefinitionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      serviceResources: (() {
        final guardedValue = map['serviceResources'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
