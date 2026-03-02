// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpnaas_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_vpnaas_service_service_args_doc}
class ServiceArgs {
  /// The administrative state of the resource. Can either be up(true) or down(false).
  /// Changing this updates the administrative state of the existing service.
  final pulumi.Input<bool>? adminStateUp;
  /// The human-readable description for the service.
  /// Changing this updates the description of the existing service.
  final pulumi.Input<String>? description;
  /// The name of the service. Changing this updates the name of
  /// the existing service.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// service.
  final pulumi.Input<String>? region;
  /// The ID of the router. Changing this creates a new service.
  final pulumi.Input<String> routerId;
  /// SubnetID is the ID of the subnet. Default is null.
  final pulumi.Input<String>? subnetId;
  /// The owner of the service. Required if admin wants to
  /// create a service for another project. Changing this creates a new service.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [ServiceArgs].
  /// [adminStateUp] The administrative state of the resource. Can either be up(true) or down(false).
  /// [description] The human-readable description for the service.
  /// [name] The name of the service. Changing this updates the name of
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routerId] The ID of the router. Changing this creates a new service.
  /// [subnetId] SubnetID is the ID of the subnet. Default is null.
  /// [tenantId] The owner of the service. Required if admin wants to
  /// [valueSpecs] Map of additional options.
  ServiceArgs({
    this.adminStateUp,
    this.description,
    this.name,
    this.region,
    required this.routerId,
    this.subnetId,
    this.tenantId,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'routerId': routerId,
      'subnetId': ?subnetId,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs'] as Map).cast<String, String>()).input(),
    );
  }
}

