// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_restorable_database_accounts_account.dart';

/// Result data returned by getRestorableDatabaseAccounts.
class GetRestorableDatabaseAccountsResult {
  /// One or more `accounts` blocks as defined below.
  final List<GetRestorableDatabaseAccountsAccount> accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location of the regional Cosmos DB Restorable Database Account.
  final String location;
  final String name;

  /// Creates a new [GetRestorableDatabaseAccountsResult].
  /// [accounts] One or more `accounts` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the regional Cosmos DB Restorable Database Account.
  /// [name] Required.
  const GetRestorableDatabaseAccountsResult({
    required this.accounts,
    required this.id,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetRestorableDatabaseAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
    };
  }

  factory GetRestorableDatabaseAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetRestorableDatabaseAccountsResult(
      accounts: pulumi.Input.decodeList<GetRestorableDatabaseAccountsAccount>(map['accounts']!, (value) => GetRestorableDatabaseAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}

