// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_dhcp_address_range.dart';

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// DHCP address ranges.
  /// Structure is documented below.
  final pulumi.Input<List<SubnetDhcpAddressRange>>? dhcpAddressRanges;
  /// The canonical identifier of the logical router that this subnet is attached to.
  final pulumi.Input<String>? gatewayId;
  /// The IP address of the gateway of this subnet. Must fall within the IP prefix defined above.
  final pulumi.Input<String>? gatewayIp;
  /// The IP address range of the subnet in CIDR format.
  final pulumi.Input<String>? ipCidrRange;
  /// The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// where n ranges from 1 to 5.
  final pulumi.Input<String>? name;
  /// The resource name of the private cloud to create a new subnet in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String>? parent;
  /// Whether the NSX-T configuration in the backend follows the standard configuration supported by Google Cloud.
  /// If false, the subnet cannot be modified through Google Cloud, only through NSX-T directly.
  final pulumi.Input<bool>? standardConfig;
  /// State of the subnet.
  final pulumi.Input<String>? state;
  /// The type of the subnet.
  final pulumi.Input<String>? type;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// VLAN ID of the VLAN on which the subnet is configured.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [SubnetState].
  /// [createTime] Creation time of this resource.
  /// [dhcpAddressRanges] DHCP address ranges.
  /// [gatewayId] The canonical identifier of the logical router that this subnet is attached to.
  /// [gatewayIp] The IP address of the gateway of this subnet. Must fall within the IP prefix defined above.
  /// [ipCidrRange] The IP address range of the subnet in CIDR format.
  /// [name] The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// [parent] The resource name of the private cloud to create a new subnet in.
  /// [standardConfig] Whether the NSX-T configuration in the backend follows the standard configuration supported by Google Cloud.
  /// [state] State of the subnet.
  /// [type] The type of the subnet.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  /// [vlanId] VLAN ID of the VLAN on which the subnet is configured.
  SubnetState({
    this.createTime,
    this.dhcpAddressRanges,
    this.gatewayId,
    this.gatewayIp,
    this.ipCidrRange,
    this.name,
    this.parent,
    this.standardConfig,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dhcpAddressRanges': ?pulumi.Input.mapOptionalInputValue<List<SubnetDhcpAddressRange>, List<Map<String, dynamic>>>(dhcpAddressRanges, (value) => pulumi.Input.encodeList<SubnetDhcpAddressRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayId': ?gatewayId,
      'gatewayIp': ?gatewayIp,
      'ipCidrRange': ?ipCidrRange,
      'name': ?name,
      'parent': ?parent,
      'standardConfig': ?standardConfig,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vlanId': ?vlanId,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dhcpAddressRanges: map['dhcpAddressRanges'] == null ? null : (pulumi.Input.decodeList<SubnetDhcpAddressRange>(map['dhcpAddressRanges']!, (value) => SubnetDhcpAddressRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId']! as String).input(),
      gatewayIp: map['gatewayIp'] == null ? null : (map['gatewayIp']! as String).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      standardConfig: map['standardConfig'] == null ? null : (map['standardConfig']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId']! as int).input(),
    );
  }
}

