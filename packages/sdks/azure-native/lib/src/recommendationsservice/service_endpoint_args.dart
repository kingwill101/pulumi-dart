// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_resource_properties.dart';

/// {@template pulumi_recommendationsservice_service_endpoint_args_doc}
/// The set of arguments for ServiceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_recommendationsservice_service_endpoint_args_doc}
class ServiceEndpointArgs {
  /// The name of the RecommendationsService Account resource.
  final pulumi.Input<String> accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ServiceEndpoint resource properties.
  final pulumi.Input<ServiceEndpointResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ServiceEndpoint resource.
  final pulumi.Input<String>? serviceEndpointName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceEndpointArgs].
  /// [accountName] The name of the RecommendationsService Account resource.
  /// [location] The geo-location where the resource lives
  /// [properties] ServiceEndpoint resource properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceEndpointName] The name of the ServiceEndpoint resource.
  /// [tags] Resource tags.
  ServiceEndpointArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    pulumi.Output<ServiceEndpointResourceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serviceEndpointName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ServiceEndpointResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceEndpointName = pulumi.Input.asOptionalInput<String>(serviceEndpointName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ServiceEndpointResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceEndpointName': ?serviceEndpointName,
      'tags': ?tags,
    };
  }

  factory ServiceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ServiceEndpointResourceProperties>(ServiceEndpointResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceEndpointName: map['serviceEndpointName'] == null ? null : pulumi.Output.create<String>(map['serviceEndpointName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

