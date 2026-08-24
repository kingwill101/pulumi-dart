// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_result_managed_by.dart';
import 'get_accounts_result_settings.dart';

class GetAccountsResult {
  /// Timestamp for the creation of the account
  final pulumi.Input<String> createdOn;
  /// Identifier
  final pulumi.Input<String> id;
  /// Parent container details
  final pulumi.Input<GetAccountsResultManagedBy> managedBy;
  /// Account name
  final pulumi.Input<String> name;
  /// Account settings
  final pulumi.Input<GetAccountsResultSettings> settings;
  /// Available values: "standard", "enterprise".
  final pulumi.Input<String> type;

  /// Creates a new [GetAccountsResult].
  /// [createdOn] Timestamp for the creation of the account
  /// [id] Identifier
  /// [managedBy] Parent container details
  /// [name] Account name
  /// [settings] Account settings
  /// [type] Available values: "standard", "enterprise".
  const GetAccountsResult({
    required this.createdOn,
    required this.id,
    required this.managedBy,
    required this.name,
    required this.settings,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'id': id,
      'managedBy': pulumi.Input.mapInputValue<GetAccountsResultManagedBy, Map<String, dynamic>>(managedBy, (value) => value.toMap()),
      'name': name,
      'settings': pulumi.Input.mapInputValue<GetAccountsResultSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountsResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      managedBy: pulumi.Input.fromValue(GetAccountsResultManagedBy.fromMap((map['managedBy']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      settings: pulumi.Input.fromValue(GetAccountsResultSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
