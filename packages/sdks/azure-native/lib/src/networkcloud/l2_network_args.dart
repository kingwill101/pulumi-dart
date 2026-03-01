// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_l2_network_args_doc}
/// The set of arguments for L2Network.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_l2_network_args_doc}
class L2NetworkArgs {
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  final pulumi.Input<String>? hybridAksPluginType;
  /// The default interface name for this L2 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  final pulumi.Input<String>? interfaceName;
  /// The resource ID of the Network Fabric l2IsolationDomain.
  final pulumi.Input<String> l2IsolationDomainId;
  /// The name of the L2 network.
  final pulumi.Input<String>? l2NetworkName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [L2NetworkArgs].
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksPluginType] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  /// [interfaceName] The default interface name for this L2 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  /// [l2IsolationDomainId] The resource ID of the Network Fabric l2IsolationDomain.
  /// [l2NetworkName] The name of the L2 network.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  L2NetworkArgs({
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? hybridAksPluginType,
    pulumi.Output<String>? interfaceName,
    required pulumi.Output<String> l2IsolationDomainId,
    pulumi.Output<String>? l2NetworkName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      hybridAksPluginType = pulumi.Input.asOptionalInput<String>(hybridAksPluginType),
      interfaceName = pulumi.Input.asOptionalInput<String>(interfaceName),
      l2IsolationDomainId = pulumi.Input.asInput<String>(l2IsolationDomainId),
      l2NetworkName = pulumi.Input.asOptionalInput<String>(l2NetworkName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hybridAksPluginType': ?hybridAksPluginType,
      'interfaceName': ?interfaceName,
      'l2IsolationDomainId': l2IsolationDomainId,
      'l2NetworkName': ?l2NetworkName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory L2NetworkArgs.fromMap(Map<String, dynamic> map) {
    return L2NetworkArgs(
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      hybridAksPluginType: map['hybridAksPluginType'] == null ? null : pulumi.Output.create<String>(map['hybridAksPluginType'] as String),
      interfaceName: map['interfaceName'] == null ? null : pulumi.Output.create<String>(map['interfaceName'] as String),
      l2IsolationDomainId: pulumi.Output.create<String>(map['l2IsolationDomainId'] as String),
      l2NetworkName: map['l2NetworkName'] == null ? null : pulumi.Output.create<String>(map['l2NetworkName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

