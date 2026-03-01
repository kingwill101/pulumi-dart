// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_get_args_doc}
/// Arguments for get.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_get_args_doc}
class GetArgs {
  /// The name of this Elastic SAN.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Elastic SAN exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArgs].
  /// [name] The name of this Elastic SAN.
  /// [resourceGroupName] The name of the Resource Group where the Elastic SAN exists.
  GetArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArgs.fromMap(Map<String, dynamic> map) {
    return GetArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

