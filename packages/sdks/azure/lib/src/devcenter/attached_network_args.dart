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
  AttachedNetworkArgs({
    required pulumi.Output<String> devCenterId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkConnectionId,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConnectionId = pulumi.Input.asInput<String>(networkConnectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': ?name,
      'networkConnectionId': networkConnectionId,
    };
  }

  factory AttachedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkArgs(
      devCenterId: pulumi.Output.create<String>(map['devCenterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConnectionId: pulumi.Output.create<String>(map['networkConnectionId'] as String),
    );
  }
}

