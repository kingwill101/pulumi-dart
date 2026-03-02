// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatGateway resources.
class NatGatewayState {
  /// The idle timeout which should be used in minutes. Defaults to `4`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The resource GUID property of the NAT Gateway.
  final pulumi.Input<String>? resourceGuid;
  /// The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
  ///
  /// > **Note:** Only one Availability Zone can be defined. For more information, please check out the [Azure documentation](https://learn.microsoft.com/en-us/azure/nat-gateway/nat-overview#availability-zones)
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [NatGatewayState].
  /// [idleTimeoutInMinutes] The idle timeout which should be used in minutes. Defaults to `4`.
  /// [location] Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  /// [resourceGuid] The resource GUID property of the NAT Gateway.
  /// [skuName] The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
  NatGatewayState({
    this.idleTimeoutInMinutes,
    this.location,
    this.name,
    this.resourceGroupName,
    this.resourceGuid,
    this.skuName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceGuid': ?resourceGuid,
      'skuName': ?skuName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory NatGatewayState.fromMap(Map<String, dynamic> map) {
    return NatGatewayState(
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      resourceGuid: map['resourceGuid'] == null ? null : (map['resourceGuid']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

