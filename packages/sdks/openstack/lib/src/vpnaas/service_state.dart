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
  ServiceState({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? externalV4Ip,
    pulumi.Output<String>? externalV6Ip,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? tenantId,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalV4Ip = pulumi.Input.asOptionalInput<String>(externalV4Ip),
      externalV6Ip = pulumi.Input.asOptionalInput<String>(externalV6Ip),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

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
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      externalV4Ip: map['externalV4Ip'] == null ? null : pulumi.Output.create<String>(map['externalV4Ip'] as String),
      externalV6Ip: map['externalV6Ip'] == null ? null : pulumi.Output.create<String>(map['externalV6Ip'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

