// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_app_service_plan_route_for_vnet_args_doc}
/// The set of arguments for AppServicePlanRouteForVnet.
/// {@endtemplate}
/// {@macro pulumi_web_app_service_plan_route_for_vnet_args_doc}
class AppServicePlanRouteForVnetArgs {
  /// The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  final pulumi.Input<String>? endAddress;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the App Service plan.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Virtual Network route.
  final pulumi.Input<String>? routeName;
  /// The type of route this is:
  /// DEFAULT - By default, every app has routes to the local address ranges specified by RFC1918
  /// INHERITED - Routes inherited from the real Virtual Network routes
  /// STATIC - Static route set on the app only
  ///
  /// These values will be used for syncing an app's routes with those from a Virtual Network.
  final pulumi.Input<String>? routeType;
  /// The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  final pulumi.Input<String>? startAddress;
  /// Name of the Virtual Network.
  final pulumi.Input<String> vnetName;

  /// Creates a new [AppServicePlanRouteForVnetArgs].
  /// [endAddress] The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  /// [kind] Kind of resource.
  /// [name] Name of the App Service plan.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [routeName] Name of the Virtual Network route.
  /// [routeType] The type of route this is:
  /// [startAddress] The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  /// [vnetName] Name of the Virtual Network.
  AppServicePlanRouteForVnetArgs({
    this.endAddress,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    this.routeName,
    this.routeType,
    this.startAddress,
    required this.vnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endAddress': ?endAddress,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'routeName': ?routeName,
      'routeType': ?routeType,
      'startAddress': ?startAddress,
      'vnetName': vnetName,
    };
  }

  factory AppServicePlanRouteForVnetArgs.fromMap(Map<String, dynamic> map) {
    return AppServicePlanRouteForVnetArgs(
      endAddress: map['endAddress'] == null ? null : (map['endAddress'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeName: map['routeName'] == null ? null : (map['routeName'] as String).input(),
      routeType: map['routeType'] == null ? null : (map['routeType'] as String).input(),
      startAddress: map['startAddress'] == null ? null : (map['startAddress'] as String).input(),
      vnetName: (map['vnetName'] as String).input(),
    );
  }
}

