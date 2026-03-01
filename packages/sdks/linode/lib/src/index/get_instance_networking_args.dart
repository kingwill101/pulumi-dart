// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_instance_networking_get_instance_networking_args_doc}
/// Arguments for getInstanceNetworking.
/// {@endtemplate}
/// {@macro pulumi_index_get_instance_networking_get_instance_networking_args_doc}
class GetInstanceNetworkingArgs {
  /// The Linode instance's ID.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetInstanceNetworkingArgs].
  /// [linodeId] The Linode instance's ID.
  GetInstanceNetworkingArgs({
    required pulumi.Output<int> linodeId,
  }) :
      linodeId = pulumi.Input.asInput<int>(linodeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': linodeId,
    };
  }

  factory GetInstanceNetworkingArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingArgs(
      linodeId: pulumi.Output.create<int>(map['linodeId'] as int),
    );
  }
}

