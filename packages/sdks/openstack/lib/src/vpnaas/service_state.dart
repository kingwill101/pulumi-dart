// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// The administrative state of the resource. Can either be up(true) or down(false).
  /// Changing this updates the administrative state of the existing service.
  final pulumi.Input<bool>? adminStateUp;
  /// The human-readable description for the service.
  /// Changing this updates the description of the existing service.
  final pulumi.Input<String>? description;
  /// The read-only external (public) IPv4 address that is used for the VPN service.
  final pulumi.Input<String>? externalV4Ip;
  /// The read-only external (public) IPv6 address that is used for the VPN service.
  final pulumi.Input<String>? externalV6Ip;
  /// The name of the service. Changing this updates the name of
  /// the existing service.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// service.
  final pulumi.Input<String>? region;
  /// The ID of the router. Changing this creates a new service.
  final pulumi.Input<String>? routerId;
  /// Indicates whether IPsec VPN service is currently operational. Values are ACTIVE, DOWN, BUILD, ERROR, PENDING_CREATE, PENDING_UPDATE, or PENDING_DELETE.
  final pulumi.Input<String>? status;
  /// SubnetID is the ID of the subnet. Default is null.
  final pulumi.Input<String>? subnetId;
  /// The owner of the service. Required if admin wants to
  /// create a service for another project. Changing this creates a new service.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [ServiceState].
  /// [adminStateUp] The administrative state of the resource. Can either be up(true) or down(false).
  /// [description] The human-readable description for the service.
  /// [externalV4Ip] The read-only external (public) IPv4 address that is used for the VPN service.
  /// [externalV6Ip] The read-only external (public) IPv6 address that is used for the VPN service.
  /// [name] The name of the service. Changing this updates the name of
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routerId] The ID of the router. Changing this creates a new service.
  /// [status] Indicates whether IPsec VPN service is currently operational. Values are ACTIVE, DOWN, BUILD, ERROR, PENDING_CREATE, PENDING_UPDATE, or PENDING_DELETE.
  /// [subnetId] SubnetID is the ID of the subnet. Default is null.
  /// [tenantId] The owner of the service. Required if admin wants to
  /// [valueSpecs] Map of additional options.
  const ServiceState({
    this.adminStateUp,
    this.description,
    this.externalV4Ip,
    this.externalV6Ip,
    this.name,
    this.region,
    this.routerId,
    this.status,
    this.subnetId,
    this.tenantId,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'externalV4Ip': ?externalV4Ip,
      'externalV6Ip': ?externalV6Ip,
      'name': ?name,
      'region': ?region,
      'routerId': ?routerId,
      'status': ?status,
      'subnetId': ?subnetId,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalV4Ip: (() { final guardedValue = map['externalV4Ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalV6Ip: (() { final guardedValue = map['externalV6Ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

