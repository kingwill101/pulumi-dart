// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicelinker_get_connector_dryrun_args_doc}
/// Arguments for getConnectorDryrun.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_get_connector_dryrun_args_doc}
class GetConnectorDryrunArgs {
  /// The name of dryrun.
  final pulumi.Input<String> dryrunName;

  /// The name of Azure region.
  final pulumi.Input<String> location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The ID of the target subscription.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetConnectorDryrunArgs].
  /// [dryrunName] The name of dryrun.
  /// [location] The name of Azure region.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subscriptionId] The ID of the target subscription.
  GetConnectorDryrunArgs({
    required this.dryrunName,
    required this.location,
    required this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryrunName': dryrunName,
      'location': location,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetConnectorDryrunArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorDryrunArgs(
      dryrunName: pulumi.Input.fromValue(map['dryrunName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
