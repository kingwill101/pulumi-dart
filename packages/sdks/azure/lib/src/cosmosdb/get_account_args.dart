// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_account_get_account_args_doc}
class GetAccountArgs {
  /// Specifies the name of the CosmosDB Account.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group in which the CosmosDB Account resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountArgs].
  /// [name] Specifies the name of the CosmosDB Account.
  /// [resourceGroupName] Specifies the name of the resource group in which the CosmosDB Account resides.
  GetAccountArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

