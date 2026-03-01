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
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? resourceGuid,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      resourceGuid = pulumi.Input.asOptionalInput<String>(resourceGuid),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceGuid: map['resourceGuid'] == null ? null : pulumi.Output.create<String>(map['resourceGuid'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

