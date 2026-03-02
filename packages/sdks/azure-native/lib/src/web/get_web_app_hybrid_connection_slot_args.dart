// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_hybrid_connection_slot_args_doc}
/// Arguments for getWebAppHybridConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_hybrid_connection_slot_args_doc}
class GetWebAppHybridConnectionSlotArgs {
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

  /// Creates a new [GetWebAppHybridConnectionSlotArgs].
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [relayName] The relay name for this hybrid connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] The name of the slot for the web app.
  GetWebAppHybridConnectionSlotArgs({
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

  factory GetWebAppHybridConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppHybridConnectionSlotArgs(
      name: (map['name'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      relayName: (map['relayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

