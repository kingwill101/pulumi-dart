// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service.dart';
import 'subnet_network.dart';

/// {@template pulumi_network_interface_endpoint_args_doc}
/// The set of arguments for InterfaceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_interface_endpoint_args_doc}
class InterfaceEndpointArgs {
  /// A reference to the service being brought into the virtual network.
  final pulumi.Input<EndpointService>? endpointService;
  /// A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint.
  final pulumi.Input<String>? fqdn;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the interface endpoint.
  final pulumi.Input<String>? interfaceEndpointName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the subnet from which the private IP will be allocated.
  final pulumi.Input<SubnetNetwork>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InterfaceEndpointArgs].
  /// [endpointService] A reference to the service being brought into the virtual network.
  /// [fqdn] A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint.
  /// [id] Resource ID.
  /// [interfaceEndpointName] The name of the interface endpoint.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [subnet] The ID of the subnet from which the private IP will be allocated.
  /// [tags] Resource tags.
  InterfaceEndpointArgs({
    pulumi.Output<EndpointService>? endpointService,
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? id,
    pulumi.Output<String>? interfaceEndpointName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SubnetNetwork>? subnet,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      endpointService = pulumi.Input.asOptionalInput<EndpointService>(endpointService),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      id = pulumi.Input.asOptionalInput<String>(id),
      interfaceEndpointName = pulumi.Input.asOptionalInput<String>(interfaceEndpointName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnet = pulumi.Input.asOptionalInput<SubnetNetwork>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointService': ?pulumi.Input.mapOptionalInputValue<EndpointService, Map<String, dynamic>>(endpointService, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'id': ?id,
      'interfaceEndpointName': ?interfaceEndpointName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'subnet': ?subnet,
      'tags': ?tags,
    };
  }

  factory InterfaceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InterfaceEndpointArgs(
      endpointService: map['endpointService'] == null ? null : pulumi.Output.create<EndpointService>(EndpointService.fromMap((map['endpointService'] as Map).cast<String, dynamic>())),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      interfaceEndpointName: map['interfaceEndpointName'] == null ? null : pulumi.Output.create<String>(map['interfaceEndpointName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<SubnetNetwork>(map['subnet'] as SubnetNetwork),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

