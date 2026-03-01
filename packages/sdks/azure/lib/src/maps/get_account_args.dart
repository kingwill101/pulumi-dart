// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maps_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_maps_get_account_get_account_args_doc}
class GetAccountArgs {
  /// Specifies the name of the Maps Account.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group in which the Maps Account is located.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAccountArgs].
  /// [name] Specifies the name of the Maps Account.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Maps Account is located.
  /// [tags] Optional.
  GetAccountArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

