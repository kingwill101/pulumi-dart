// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_external_fixed_ip.dart';
import 'router_vendor_options.dart';

/// Input properties used for looking up and filtering Router resources.
class RouterState {
  /// Administrative up/down status for the router
  /// (must be "true" or "false" if provided). Changing this updates the
  /// `admin_state_up` of an existing router.
  final pulumi.Input<bool>? adminStateUp;

  /// The collection of tags assigned on the router, which have been
  /// explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;

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

  /// Creates a new [RouterState].
  /// [adminStateUp] Administrative up/down status for the router
  /// [allTags] The collection of tags assigned on the router, which have been
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
  RouterState({
    this.adminStateUp,
    this.allTags,
    this.availabilityZoneHints,
    this.description,
    this.distributed,
    this.enableSnat,
    this.externalFixedIps,
    this.externalNetworkId,
    this.externalQosPolicyId,
    this.externalSubnetIds,
    this.name,
    this.region,
    this.tags,
    this.tenantId,
    this.valueSpecs,
    this.vendorOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allTags': ?allTags,
      'availabilityZoneHints': ?availabilityZoneHints,
      'description': ?description,
      'distributed': ?distributed,
      'enableSnat': ?enableSnat,
      'externalFixedIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouterExternalFixedIp>,
            List<Map<String, dynamic>>
          >(
            externalFixedIps,
            (value) =>
                pulumi.Input.encodeList<
                  RouterExternalFixedIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'externalNetworkId': ?externalNetworkId,
      'externalQosPolicyId': ?externalQosPolicyId,
      'externalSubnetIds': ?externalSubnetIds,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
      'vendorOptions':
          ?pulumi.Input.mapOptionalInputValue<
            RouterVendorOptions,
            Map<String, dynamic>
          >(vendorOptions, (value) => value.toMap()),
    };
  }

  factory RouterState.fromMap(Map<String, dynamic> map) {
    return RouterState(
      adminStateUp: (() {
        final guardedValue = map['adminStateUp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allTags: (() {
        final guardedValue = map['allTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      availabilityZoneHints: (() {
        final guardedValue = map['availabilityZoneHints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      distributed: (() {
        final guardedValue = map['distributed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSnat: (() {
        final guardedValue = map['enableSnat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      externalFixedIps: (() {
        final guardedValue = map['externalFixedIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RouterExternalFixedIp>(
            guardedValue,
            (value) => RouterExternalFixedIp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      externalNetworkId: (() {
        final guardedValue = map['externalNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalQosPolicyId: (() {
        final guardedValue = map['externalQosPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalSubnetIds: (() {
        final guardedValue = map['externalSubnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueSpecs: (() {
        final guardedValue = map['valueSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vendorOptions: (() {
        final guardedValue = map['vendorOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouterVendorOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
