// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_attached_network_attached_network_args_doc}
/// The set of arguments for AttachedNetwork.
/// {@endtemplate}
/// {@macro pulumi_devcenter_attached_network_attached_network_args_doc}
class AttachedNetworkArgs {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  final pulumi.Input<String> devCenterId;
  /// Specifies the name of this Dev Center Attached Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Dev Center Network Connection you want to attach. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkConnectionId;

  /// Creates a new [AttachedNetworkArgs].
  /// [devCenterId] The ID of the associated Dev Center. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Attached Network. Changing this forces a new resource to be created.
  /// [networkConnectionId] The ID of the Dev Center Network Connection you want to attach. Changing this forces a new resource to be created.
  const AttachedNetworkArgs({
    required this.devCenterId,
    this.name,
    required this.networkConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': ?name,
      'networkConnectionId': networkConnectionId,
    };
  }

  factory AttachedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkArgs(
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConnectionId: pulumi.Input.fromValue(map['networkConnectionId'] as String),
    );
  }
}
