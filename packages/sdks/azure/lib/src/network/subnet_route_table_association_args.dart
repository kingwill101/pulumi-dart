// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_subnet_route_table_association_subnet_route_table_association_args_doc}
/// The set of arguments for SubnetRouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_route_table_association_subnet_route_table_association_args_doc}
class SubnetRouteTableAssociationArgs {
  /// The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Use this resource only when the subnet is managed as a standalone `azure.network.Subnet`. If the subnet is declared inline inside `azure.network.VirtualNetwork`, set `route_table_id` in the inline `subnet` block and do not create this association for the same subnet.
  final pulumi.Input<String> routeTableId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [SubnetRouteTableAssociationArgs].
  /// [routeTableId] The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet. Changing this forces a new resource to be created.
  SubnetRouteTableAssociationArgs({
    required pulumi.Output<String> routeTableId,
    required pulumi.Output<String> subnetId,
  }) :
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      subnetId = pulumi.Input.asInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': routeTableId,
      'subnetId': subnetId,
    };
  }

  factory SubnetRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SubnetRouteTableAssociationArgs(
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

