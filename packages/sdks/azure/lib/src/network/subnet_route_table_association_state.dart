// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetRouteTableAssociation resources.
class SubnetRouteTableAssociationState {
  /// The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Use this resource only when the subnet is managed as a standalone `azure.network.Subnet`. If the subnet is declared inline inside `azure.network.VirtualNetwork`, set `route_table_id` in the inline `subnet` block and do not create this association for the same subnet.
  final pulumi.Input<String>? routeTableId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SubnetRouteTableAssociationState].
  /// [routeTableId] The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet. Changing this forces a new resource to be created.
  SubnetRouteTableAssociationState({
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? subnetId,
  }) :
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': ?routeTableId,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return SubnetRouteTableAssociationState(
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

