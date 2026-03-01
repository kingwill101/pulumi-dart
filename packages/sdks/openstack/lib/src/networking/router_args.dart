// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_external_fixed_ip.dart';
import 'router_vendor_options.dart';

/// {@template pulumi_networking_router_router_args_doc}
/// The set of arguments for Router.
/// {@endtemplate}
/// {@macro pulumi_networking_router_router_args_doc}
class RouterArgs {
  /// Administrative up/down status for the router
  /// (must be "true" or "false" if provided). Changing this updates the
  /// `admin_state_up` of an existing router.
  final pulumi.Input<bool>? adminStateUp;
  /// An availability zone is used to make
  /// network resources highly available. Used for resources with high availability
  /// so that they are scheduled on different availability zones. Changing this
  /// creates a new router.
  final pulumi.Input<List<String>>? availabilityZoneHints;
  /// Human-readable description for the router.
  final pulumi.Input<String>? description;
  /// Indicates whether or not to create a
  /// distributed router. The default policy setting in Neutron restricts
  /// usage of this property to administrative users only.
  final pulumi.Input<bool>? distributed;
  /// Enable Source NAT for the router. Valid values are
  /// "true" or "false". An `external_network_id` has to be set in order to
  /// set this property. Changing this updates the `enable_snat` of the router.
  /// Setting this value **requires** an **ext-gw-mode** extension to be enabled
  /// in OpenStack Neutron.
  final pulumi.Input<bool>? enableSnat;
  /// An external fixed IP for the router. This
  /// can be repeated. The structure is described below. An `external_network_id`
  /// has to be set in order to set this property. Changing this updates the
  /// external fixed IPs of the router.
  final pulumi.Input<List<RouterExternalFixedIp>>? externalFixedIps;
  /// The network UUID of an external gateway
  /// for the router. A router with an external gateway is required if any
  /// compute instances or load balancers will be using floating IPs. Changing
  /// this updates the external gateway of the router.
  final pulumi.Input<String>? externalNetworkId;
  /// The QoS policy UUID that will be applied
  /// on the external gateway for the router. Changing this updates the external
  /// gateway of the router.
  final pulumi.Input<String>? externalQosPolicyId;
  /// A list of external subnet IDs to try over
  /// each to obtain a fixed IP for the router. If a subnet ID in a list has
  /// exhausted floating IP pool, the next subnet ID will be tried. This argument is
  /// used only during the router creation and allows to set only one external fixed
  /// IP. Conflicts with an `external_fixed_ip` argument.
  final pulumi.Input<List<String>>? externalSubnetIds;
  /// A unique name for the router. Changing this
  /// updates the `name` of an existing router.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// router.
  final pulumi.Input<String>? region;
  /// A set of string tags for the router.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the floating IP. Required if admin wants
  /// to create a router for another tenant. Changing this creates a new router.
  final pulumi.Input<String>? tenantId;
  /// Map of additional driver-specific options.
  final pulumi.Input<Map<String, String>>? valueSpecs;
  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  final pulumi.Input<RouterVendorOptions>? vendorOptions;

  /// Creates a new [RouterArgs].
  /// [adminStateUp] Administrative up/down status for the router
  /// [availabilityZoneHints] An availability zone is used to make
  /// [description] Human-readable description for the router.
  /// [distributed] Indicates whether or not to create a
  /// [enableSnat] Enable Source NAT for the router. Valid values are
  /// [externalFixedIps] An external fixed IP for the router. This
  /// [externalNetworkId] The network UUID of an external gateway
  /// [externalQosPolicyId] The QoS policy UUID that will be applied
  /// [externalSubnetIds] A list of external subnet IDs to try over
  /// [name] A unique name for the router. Changing this
  /// [region] The region in which to obtain the V2 networking client.
  /// [tags] A set of string tags for the router.
  /// [tenantId] The owner of the floating IP. Required if admin wants
  /// [valueSpecs] Map of additional driver-specific options.
  /// [vendorOptions] Map of additional vendor-specific options.
  RouterArgs({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<List<String>>? availabilityZoneHints,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? distributed,
    pulumi.Output<bool>? enableSnat,
    pulumi.Output<List<RouterExternalFixedIp>>? externalFixedIps,
    pulumi.Output<String>? externalNetworkId,
    pulumi.Output<String>? externalQosPolicyId,
    pulumi.Output<List<String>>? externalSubnetIds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<Map<String, String>>? valueSpecs,
    pulumi.Output<RouterVendorOptions>? vendorOptions,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      availabilityZoneHints = pulumi.Input.asOptionalInput<List<String>>(availabilityZoneHints),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributed = pulumi.Input.asOptionalInput<bool>(distributed),
      enableSnat = pulumi.Input.asOptionalInput<bool>(enableSnat),
      externalFixedIps = pulumi.Input.asOptionalInput<List<RouterExternalFixedIp>>(externalFixedIps),
      externalNetworkId = pulumi.Input.asOptionalInput<String>(externalNetworkId),
      externalQosPolicyId = pulumi.Input.asOptionalInput<String>(externalQosPolicyId),
      externalSubnetIds = pulumi.Input.asOptionalInput<List<String>>(externalSubnetIds),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs),
      vendorOptions = pulumi.Input.asOptionalInput<RouterVendorOptions>(vendorOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'availabilityZoneHints': ?availabilityZoneHints,
      'description': ?description,
      'distributed': ?distributed,
      'enableSnat': ?enableSnat,
      'externalFixedIps': ?pulumi.Input.mapOptionalInputValue<List<RouterExternalFixedIp>, List<Map<String, dynamic>>>(externalFixedIps, (value) => pulumi.Input.encodeList<RouterExternalFixedIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalNetworkId': ?externalNetworkId,
      'externalQosPolicyId': ?externalQosPolicyId,
      'externalSubnetIds': ?externalSubnetIds,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
      'vendorOptions': ?pulumi.Input.mapOptionalInputValue<RouterVendorOptions, Map<String, dynamic>>(vendorOptions, (value) => value.toMap()),
    };
  }

  factory RouterArgs.fromMap(Map<String, dynamic> map) {
    return RouterArgs(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      availabilityZoneHints: map['availabilityZoneHints'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZoneHints'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributed: map['distributed'] == null ? null : pulumi.Output.create<bool>(map['distributed'] as bool),
      enableSnat: map['enableSnat'] == null ? null : pulumi.Output.create<bool>(map['enableSnat'] as bool),
      externalFixedIps: map['externalFixedIps'] == null ? null : pulumi.Output.create<List<RouterExternalFixedIp>>(pulumi.Input.decodeList<RouterExternalFixedIp>(map['externalFixedIps'], (value) => RouterExternalFixedIp.fromMap((value as Map).cast<String, dynamic>()))),
      externalNetworkId: map['externalNetworkId'] == null ? null : pulumi.Output.create<String>(map['externalNetworkId'] as String),
      externalQosPolicyId: map['externalQosPolicyId'] == null ? null : pulumi.Output.create<String>(map['externalQosPolicyId'] as String),
      externalSubnetIds: map['externalSubnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['externalSubnetIds'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
      vendorOptions: map['vendorOptions'] == null ? null : pulumi.Output.create<RouterVendorOptions>(RouterVendorOptions.fromMap((map['vendorOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

