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
    pulumi.Output<String>? dryrunName,
    required pulumi.Output<String> location,
    pulumi.Output<CreateOrUpdateDryrunParameters>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      dryrunName = pulumi.Input.asOptionalInput<String>(dryrunName),
      location = pulumi.Input.asInput<String>(location),
      parameters = pulumi.Input.asOptionalInput<CreateOrUpdateDryrunParameters>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

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
      dryrunName: map['dryrunName'] == null ? null : pulumi.Output.create<String>(map['dryrunName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<CreateOrUpdateDryrunParameters>(CreateOrUpdateDryrunParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

