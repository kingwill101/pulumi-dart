// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_attached_network_get_attached_network_args_doc}
/// Arguments for getAttachedNetwork.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_attached_network_get_attached_network_args_doc}
class GetAttachedNetworkArgs {
  /// The ID of the associated Dev Center.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Attached Network.
  final pulumi.Input<String> name;

  /// Creates a new [GetAttachedNetworkArgs].
  /// [devCenterId] The ID of the associated Dev Center.
  /// [name] The name of this Dev Center Attached Network.
  const GetAttachedNetworkArgs({
    required this.devCenterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetAttachedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkArgs(
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

