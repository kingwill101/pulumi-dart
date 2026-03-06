// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_hybrid_connection_keys_slot_args_doc}
/// Arguments for listWebAppHybridConnectionKeysSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_hybrid_connection_keys_slot_args_doc}
class ListWebAppHybridConnectionKeysSlotArgs {
  /// The name of the web app.
  final pulumi.Input<String> name;
  /// The namespace for this hybrid connection.
  final pulumi.Input<String> namespaceName;
  /// The relay name for this hybrid connection.
  final pulumi.Input<String> relayName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the slot for the web app.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppHybridConnectionKeysSlotArgs].
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [relayName] The relay name for this hybrid connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] The name of the slot for the web app.
  const ListWebAppHybridConnectionKeysSlotArgs({
    required this.name,
    required this.namespaceName,
    required this.relayName,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory ListWebAppHybridConnectionKeysSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppHybridConnectionKeysSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      relayName: pulumi.Input.fromValue(map['relayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

