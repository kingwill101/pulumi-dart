// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_additional_location_virtual_network_configuration.dart';

class ServiceAdditionalLocation {
  /// The number of compute units in this region. Defaults to the capacity of the main region.
  final pulumi.Input<int>? capacity;
  /// Only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  final pulumi.Input<bool>? gatewayDisabled;
  /// The URL of the Regional Gateway for the API Management Service in the specified region.
  final pulumi.Input<String>? gatewayRegionalUrl;
  /// The name of the Azure Region in which the API Management Service should be expanded to.
  final pulumi.Input<String> location;
  /// The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// ID of a standard SKU IPv4 Public IP.
  ///
  /// &gt; **Note:** Availability zones and custom public IPs are only supported in the Premium tier.
  final pulumi.Input<String>? publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  final pulumi.Input<ServiceAdditionalLocationVirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// A list of availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ServiceAdditionalLocation].
  /// [capacity] The number of compute units in this region. Defaults to the capacity of the main region.
  /// [gatewayDisabled] Only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  /// [gatewayRegionalUrl] The URL of the Regional Gateway for the API Management Service in the specified region.
  /// [location] The name of the Azure Region in which the API Management Service should be expanded to.
  /// [privateIpAddresses] The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  /// [publicIpAddressId] ID of a standard SKU IPv4 Public IP.
  /// [publicIpAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  /// [virtualNetworkConfiguration] A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  /// [zones] A list of availability zones.
  const ServiceAdditionalLocation({
    this.capacity,
    this.gatewayDisabled,
    this.gatewayRegionalUrl,
    required this.location,
    this.privateIpAddresses,
    this.publicIpAddressId,
    this.publicIpAddresses,
    this.virtualNetworkConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'gatewayDisabled': ?gatewayDisabled,
      'gatewayRegionalUrl': ?gatewayRegionalUrl,
      'location': location,
      'privateIpAddresses': ?privateIpAddresses,
      'publicIpAddressId': ?publicIpAddressId,
      'publicIpAddresses': ?publicIpAddresses,
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceAdditionalLocationVirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ServiceAdditionalLocation.fromMap(Map<String, dynamic> map) {
    return ServiceAdditionalLocation(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gatewayDisabled: (() { final guardedValue = map['gatewayDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayRegionalUrl: (() { final guardedValue = map['gatewayRegionalUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualNetworkConfiguration: (() { final guardedValue = map['virtualNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAdditionalLocationVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

