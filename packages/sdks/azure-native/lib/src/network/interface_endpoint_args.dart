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
  const InterfaceEndpointArgs({
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
      endpointService: (() { final guardedValue = map['endpointService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceEndpointName: (() { final guardedValue = map['interfaceEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as SubnetNetwork); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
