// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_list_signal_rkeys_args_doc}
/// Arguments for listSignalRKeys.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_list_signal_rkeys_args_doc}
class ListSignalRKeysArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListSignalRKeysArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  ListSignalRKeysArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListSignalRKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListSignalRKeysArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

