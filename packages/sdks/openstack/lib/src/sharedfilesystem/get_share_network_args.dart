// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_get_share_network_get_share_network_args_doc}
/// Arguments for getShareNetwork.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_get_share_network_get_share_network_args_doc}
class GetShareNetworkArgs {
  /// The human-readable description of the share network.
  final pulumi.Input<String>? description;

  /// The IP version of the share network. Can either be 4 or 6.
  final pulumi.Input<int>? ipVersion;

  /// The name of the share network.
  final pulumi.Input<String>? name;

  /// The share network type. Can either be VLAN, VXLAN,
  /// GRE, or flat.
  final pulumi.Input<String>? networkType;

  /// The neutron network UUID of the share network.
  final pulumi.Input<String>? neutronNetId;

  /// The neutron subnet UUID of the share network.
  final pulumi.Input<String>? neutronSubnetId;

  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to read a share network. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// The security service IDs associated with
  /// the share network.
  final pulumi.Input<String>? securityServiceId;

  /// The share network segmentation ID.
  final pulumi.Input<int>? segmentationId;

  /// Creates a new [GetShareNetworkArgs].
  /// [description] The human-readable description of the share network.
  /// [ipVersion] The IP version of the share network. Can either be 4 or 6.
  /// [name] The name of the share network.
  /// [networkType] The share network type. Can either be VLAN, VXLAN,
  /// [neutronNetId] The neutron network UUID of the share network.
  /// [neutronSubnetId] The neutron subnet UUID of the share network.
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [securityServiceId] The security service IDs associated with
  /// [segmentationId] The share network segmentation ID.
  GetShareNetworkArgs({
    this.description,
    this.ipVersion,
    this.name,
    this.networkType,
    this.neutronNetId,
    this.neutronSubnetId,
    this.region,
    this.securityServiceId,
    this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'networkType': ?networkType,
      'neutronNetId': ?neutronNetId,
      'neutronSubnetId': ?neutronSubnetId,
      'region': ?region,
      'securityServiceId': ?securityServiceId,
      'segmentationId': ?segmentationId,
    };
  }

  factory GetShareNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetShareNetworkArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      neutronNetId: (() {
        final guardedValue = map['neutronNetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      neutronSubnetId: (() {
        final guardedValue = map['neutronSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityServiceId: (() {
        final guardedValue = map['securityServiceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      segmentationId: (() {
        final guardedValue = map['segmentationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
