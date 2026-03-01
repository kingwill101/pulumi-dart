// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_restorable_database_accounts_get_restorable_database_accounts_args_doc}
/// Arguments for getRestorableDatabaseAccounts.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_restorable_database_accounts_get_restorable_database_accounts_args_doc}
class GetRestorableDatabaseAccountsArgs {
  /// The location where the Cosmos DB Database Account.
  final pulumi.Input<String> location;
  /// The name of this Cosmos DB Database Account.
  final pulumi.Input<String> name;

  /// Creates a new [GetRestorableDatabaseAccountsArgs].
  /// [location] The location where the Cosmos DB Database Account.
  /// [name] The name of this Cosmos DB Database Account.
  GetRestorableDatabaseAccountsArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> name,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
    };
  }

  factory GetRestorableDatabaseAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorableDatabaseAccountsArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

