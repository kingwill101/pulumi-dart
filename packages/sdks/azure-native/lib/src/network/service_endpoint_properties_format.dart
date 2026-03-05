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
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkIdentifier: (() { final guardedValue = map['networkIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

