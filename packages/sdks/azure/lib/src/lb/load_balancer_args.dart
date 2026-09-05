// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_frontend_ip_configuration.dart';

/// {@template pulumi_lb_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_lb_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Specifies the Edge Zone within the Azure Region where this Load Balancer should exist. Changing this forces a new Load Balancer to be created.
  final pulumi.Input<String?>? edgeZone;
  /// One or more `frontendIpConfiguration` blocks as documented below.
  ///
  /// &gt; **Note:** Azure Load Balancer does not allow the complete removal of all previously attached frontend configurations. If you have previously applied with one or more `frontendIpConfiguration` arguments, the removal of them all will result in a replacement  (destroy/create) of the Load Balancer.
  final pulumi.Input<List<LoadBalancerFrontendIpConfiguration>?>? frontendIpConfigurations;
  /// Specifies the supported Azure Region where the Load Balancer should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Load Balancer. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of a Public IP Address which is associated with this Load Balancer.
  final pulumi.Input<String?>? publicIpAddressId;
  /// The name of the Resource Group in which to create the Load Balancer. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the Azure Load Balancer. Accepted values are `Basic`, `Standard` and `Gateway`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `Microsoft.Network/AllowGatewayLoadBalancer` feature is required to be registered in order to use the `Gateway` SKU. The feature can only be registered by the Azure service team, please submit an [Azure support ticket](https://azure.microsoft.com/en-us/support/create-ticket/) for that.
  final pulumi.Input<String?>? sku;
  /// `skuTier` - (Optional) The SKU tier of this Load Balancer. Possible values are `Global` and `Regional`. Defaults to `Regional`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? skuTier;
  /// The ID of the Subnet which is associated with the IP Configuration.
  final pulumi.Input<String?>? subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LoadBalancerArgs].
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Load Balancer should exist. Changing this forces a new Load Balancer to be created.
  /// [frontendIpConfigurations] One or more `frontendIpConfiguration` blocks as documented below.
  /// [location] Specifies the supported Azure Region where the Load Balancer should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Load Balancer. Changing this forces a new resource to be created.
  /// [publicIpAddressId] The ID of a Public IP Address which is associated with this Load Balancer.
  /// [resourceGroupName] The name of the Resource Group in which to create the Load Balancer. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Azure Load Balancer. Accepted values are `Basic`, `Standard` and `Gateway`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [skuTier] `skuTier` - (Optional) The SKU tier of this Load Balancer. Possible values are `Global` and `Regional`. Defaults to `Regional`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet which is associated with the IP Configuration.
  /// [tags] A mapping of tags to assign to the resource.
  const LoadBalancerArgs({
    this.edgeZone,
    this.frontendIpConfigurations,
    this.location,
    this.name,
    this.publicIpAddressId,
    required this.resourceGroupName,
    this.sku,
    this.skuTier,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeZone': ?edgeZone,
      'frontendIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerFrontendIpConfiguration>, List<Map<String, dynamic>>>(frontendIpConfigurations, (value) => pulumi.Input.encodeList<LoadBalancerFrontendIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'publicIpAddressId': ?publicIpAddressId,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'skuTier': ?skuTier,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      edgeZone: (() { final guardedValue = map['edgeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurations: (() { final guardedValue = map['frontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerFrontendIpConfiguration>(guardedValue, (value) => LoadBalancerFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
