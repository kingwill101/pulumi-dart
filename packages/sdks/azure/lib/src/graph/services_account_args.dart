// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_graph_services_account_services_account_args_doc}
/// The set of arguments for ServicesAccount.
/// {@endtemplate}
/// {@macro pulumi_graph_services_account_services_account_args_doc}
class ServicesAccountArgs {
  /// Customer owned application ID. Changing this forces a new Account to be created.
  final pulumi.Input<String> applicationId;
  /// Specifies the name of this Account. Changing this forces a new Account to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServicesAccountArgs].
  /// [applicationId] Customer owned application ID. Changing this forces a new Account to be created.
  /// [name] Specifies the name of this Account. Changing this forces a new Account to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created.
  /// [tags] A mapping of tags which should be assigned to the Account.
  ServicesAccountArgs({
    required pulumi.Output<String> applicationId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServicesAccountArgs.fromMap(Map<String, dynamic> map) {
    return ServicesAccountArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

