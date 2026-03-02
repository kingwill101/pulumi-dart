// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_signed_identifier_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// List of stored access policies specified on the table.
  final List<TableSignedIdentifierResponse>? signedIdentifiers;
  /// Table name under the specified account
  final String tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [signedIdentifiers] List of stored access policies specified on the table.
  /// [tableName] Table name under the specified account
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetTableResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.signedIdentifiers,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'signedIdentifiers': ?signedIdentifiers == null ? null : pulumi.Input.encodeList<TableSignedIdentifierResponse, Map<String, dynamic>>(signedIdentifiers!, (value) => value.toMap()),
      'tableName': tableName,
      'type': type,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      signedIdentifiers: map['signedIdentifiers'] == null ? null : pulumi.Input.decodeList<TableSignedIdentifierResponse>(map['signedIdentifiers']!, (value) => TableSignedIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
      type: map['type'] as String,
    );
  }
}

