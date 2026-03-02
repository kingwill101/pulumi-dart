// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_restorable_database_accounts_account_restorable_location.dart';

class GetRestorableDatabaseAccountsAccount {
  /// The API type of the Cosmos DB Restorable Database Account.
  final pulumi.Input<String> apiType;
  /// The creation time of the regional Cosmos DB Restorable Database Account.
  final pulumi.Input<String> creationTime;
  /// The deletion time of the regional Cosmos DB Restorable Database Account.
  final pulumi.Input<String> deletionTime;
  /// The ID of the Cosmos DB Restorable Database Account.
  final pulumi.Input<String> id;
  /// One or more `restorable_locations` blocks as defined below.
  final pulumi.Input<List<GetRestorableDatabaseAccountsAccountRestorableLocation>> restorableLocations;

  /// Creates a new [GetRestorableDatabaseAccountsAccount].
  /// [apiType] The API type of the Cosmos DB Restorable Database Account.
  /// [creationTime] The creation time of the regional Cosmos DB Restorable Database Account.
  /// [deletionTime] The deletion time of the regional Cosmos DB Restorable Database Account.
  /// [id] The ID of the Cosmos DB Restorable Database Account.
  /// [restorableLocations] One or more `restorable_locations` blocks as defined below.
  GetRestorableDatabaseAccountsAccount({
    required this.apiType,
    required this.creationTime,
    required this.deletionTime,
    required this.id,
    required this.restorableLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': apiType,
      'creationTime': creationTime,
      'deletionTime': deletionTime,
      'id': id,
      'restorableLocations': pulumi.Input.mapInputValue<List<GetRestorableDatabaseAccountsAccountRestorableLocation>, List<Map<String, dynamic>>>(restorableLocations, (value) => pulumi.Input.encodeList<GetRestorableDatabaseAccountsAccountRestorableLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRestorableDatabaseAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetRestorableDatabaseAccountsAccount(
      apiType: (map['apiType'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      deletionTime: (map['deletionTime'] as String).input(),
      id: (map['id'] as String).input(),
      restorableLocations: (pulumi.Input.decodeList<GetRestorableDatabaseAccountsAccountRestorableLocation>(map['restorableLocations'], (value) => GetRestorableDatabaseAccountsAccountRestorableLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

