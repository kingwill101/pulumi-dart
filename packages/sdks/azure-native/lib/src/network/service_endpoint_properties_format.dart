// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// The service endpoint properties.
class ServiceEndpointPropertiesFormat {
  /// A list of locations.
  final pulumi.Input<List<String>>? locations;
  /// SubResource as network identifier.
  final pulumi.Input<SubResource>? networkIdentifier;
  /// The provisioning state of the resource.
  final pulumi.Input<String>? provisioningState;
  /// The type of the endpoint service.
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceEndpointPropertiesFormat].
  /// [locations] A list of locations.
  /// [networkIdentifier] SubResource as network identifier.
  /// [provisioningState] The provisioning state of the resource.
  /// [service] The type of the endpoint service.
  ServiceEndpointPropertiesFormat({
    this.locations,
    this.networkIdentifier,
    this.provisioningState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'networkIdentifier': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(networkIdentifier, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'service': ?service,
    };
  }

  factory ServiceEndpointPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPropertiesFormat(
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      networkIdentifier: map['networkIdentifier'] == null ? null : (SubResource.fromMap((map['networkIdentifier']! as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

