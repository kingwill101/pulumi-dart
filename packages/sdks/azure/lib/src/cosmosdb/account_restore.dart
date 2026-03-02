// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_restore_database.dart';
import 'account_restore_gremlin_database.dart';

class AccountRestore {
  /// A `database` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<AccountRestoreDatabase>>? databases;
  /// One or more `gremlin_database` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<AccountRestoreGremlinDatabase>>? gremlinDatabases;
  /// The creation time of the database or the collection (Datetime Format `RFC 3339`). Changing this forces a new resource to be created.
  final pulumi.Input<String> restoreTimestampInUtc;
  /// The resource ID of the restorable database account from which the restore has to be initiated. The example is `/subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Any database account with `Continuous` type (live account or accounts deleted in last 30 days) is a restorable database account and there cannot be Create/Update/Delete operations on the restorable database accounts. They can only be read and retrieved by `azure.cosmosdb.getRestorableDatabaseAccounts`.
  final pulumi.Input<String> sourceCosmosdbAccountId;
  /// A list of specific tables available for restore. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? tablesToRestores;

  /// Creates a new [AccountRestore].
  /// [databases] A `database` block as defined below. Changing this forces a new resource to be created.
  /// [gremlinDatabases] One or more `gremlin_database` blocks as defined below. Changing this forces a new resource to be created.
  /// [restoreTimestampInUtc] The creation time of the database or the collection (Datetime Format `RFC 3339`). Changing this forces a new resource to be created.
  /// [sourceCosmosdbAccountId] The resource ID of the restorable database account from which the restore has to be initiated. The example is `/subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}`. Changing this forces a new resource to be created.
  /// [tablesToRestores] A list of specific tables available for restore. Changing this forces a new resource to be created.
  AccountRestore({
    this.databases,
    this.gremlinDatabases,
    required this.restoreTimestampInUtc,
    required this.sourceCosmosdbAccountId,
    this.tablesToRestores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?pulumi.Input.mapOptionalInputValue<List<AccountRestoreDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<AccountRestoreDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gremlinDatabases': ?pulumi.Input.mapOptionalInputValue<List<AccountRestoreGremlinDatabase>, List<Map<String, dynamic>>>(gremlinDatabases, (value) => pulumi.Input.encodeList<AccountRestoreGremlinDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restoreTimestampInUtc': restoreTimestampInUtc,
      'sourceCosmosdbAccountId': sourceCosmosdbAccountId,
      'tablesToRestores': ?tablesToRestores,
    };
  }

  factory AccountRestore.fromMap(Map<String, dynamic> map) {
    return AccountRestore(
      databases: map['databases'] == null ? null : (pulumi.Input.decodeList<AccountRestoreDatabase>(map['databases']!, (value) => AccountRestoreDatabase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gremlinDatabases: map['gremlinDatabases'] == null ? null : (pulumi.Input.decodeList<AccountRestoreGremlinDatabase>(map['gremlinDatabases']!, (value) => AccountRestoreGremlinDatabase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restoreTimestampInUtc: (map['restoreTimestampInUtc'] as String).input(),
      sourceCosmosdbAccountId: (map['sourceCosmosdbAccountId'] as String).input(),
      tablesToRestores: map['tablesToRestores'] == null ? null : ((map['tablesToRestores']! as List).cast<String>()).input(),
    );
  }
}

