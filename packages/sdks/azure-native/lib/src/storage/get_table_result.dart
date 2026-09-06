// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_signed_identifier_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// List of stored access policies specified on the table.
  final List<TableSignedIdentifierResponse>? signedIdentifiers;
  /// Table name under the specified account
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetTableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [signedIdentifiers] List of stored access policies specified on the table.
  /// [tableName] Table name under the specified account
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetTableResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.signedIdentifiers,
    this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'signedIdentifiers': ?(() { final guardedValue = signedIdentifiers; if (guardedValue == null) return null; return pulumi.Input.encodeList<TableSignedIdentifierResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signedIdentifiers: (() { final guardedValue = map['signedIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TableSignedIdentifierResponse>(guardedValue, (value) => TableSignedIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
