// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_filter_get_route_filter_args_doc}
/// Arguments for getRouteFilter.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_filter_get_route_filter_args_doc}
class GetRouteFilterArgs {
  /// The Name of this Route Filter.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Route Filter exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRouteFilterArgs].
  /// [name] The Name of this Route Filter.
  /// [resourceGroupName] The name of the Resource Group where the Route Filter exists.
  GetRouteFilterArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRouteFilterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

