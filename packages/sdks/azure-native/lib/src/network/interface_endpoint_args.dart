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
    this.endpointService,
    this.fqdn,
    this.id,
    this.interfaceEndpointName,
    this.location,
    required this.resourceGroupName,
    this.subnet,
    this.tags,
  });

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
      endpointService: map['endpointService'] == null ? null : (EndpointService.fromMap((map['endpointService']! as Map).cast<String, dynamic>())).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      interfaceEndpointName: map['interfaceEndpointName'] == null ? null : (map['interfaceEndpointName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as SubnetNetwork).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

