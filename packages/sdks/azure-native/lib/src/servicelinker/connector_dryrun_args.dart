// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_or_update_dryrun_parameters.dart';

/// {@template pulumi_servicelinker_connector_dryrun_args_doc}
/// The set of arguments for ConnectorDryrun.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_connector_dryrun_args_doc}
class ConnectorDryrunArgs {
  /// The name of dryrun.
  final pulumi.Input<String>? dryrunName;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// The parameters of the dryrun
  final pulumi.Input<CreateOrUpdateDryrunParameters>? parameters;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the target subscription.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [ConnectorDryrunArgs].
  /// [dryrunName] The name of dryrun.
  /// [location] The name of Azure region.
  /// [parameters] The parameters of the dryrun
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subscriptionId] The ID of the target subscription.
  ConnectorDryrunArgs({
    this.dryrunName,
    required this.location,
    this.parameters,
    required this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryrunName': ?dryrunName,
      'location': location,
      'parameters': ?pulumi.Input.mapOptionalInputValue<CreateOrUpdateDryrunParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory ConnectorDryrunArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorDryrunArgs(
      dryrunName: map['dryrunName'] == null ? null : (map['dryrunName'] as String).input(),
      location: (map['location'] as String).input(),
      parameters: map['parameters'] == null ? null : (CreateOrUpdateDryrunParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
    );
  }
}

