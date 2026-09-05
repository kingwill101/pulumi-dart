// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_restorable_database_accounts_account.dart';

/// Result data returned by getRestorableDatabaseAccounts.
class GetRestorableDatabaseAccountsResult {
  /// One or more `accounts` blocks as defined below.
  final List<GetRestorableDatabaseAccountsAccount>? accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location of the regional Cosmos DB Restorable Database Account.
  final String? location;
  final String? name;

  /// Creates a new [GetRestorableDatabaseAccountsResult].
  /// [accounts] One or more `accounts` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the regional Cosmos DB Restorable Database Account.
  /// [name] Optional.
  const GetRestorableDatabaseAccountsResult({
    this.accounts,
    this.id,
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?(() { final guardedValue = accounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRestorableDatabaseAccountsAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
    };
  }

  factory GetRestorableDatabaseAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetRestorableDatabaseAccountsResult(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRestorableDatabaseAccountsAccount>(guardedValue, (value) => GetRestorableDatabaseAccountsAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
