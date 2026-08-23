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
  const ServicesAccountArgs({
    required this.applicationId,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

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
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
