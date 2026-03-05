// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rules.dart';

/// {@template pulumi_storage_table_service_properties_args_doc}
/// The set of arguments for TableServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_table_service_properties_args_doc}
class TableServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Specifies CORS rules for the Table service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Table service.
  final pulumi.Input<CorsRules>? cors;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Table Service within the specified storage account. Table Service Name must be 'default'
  final pulumi.Input<String>? tableServiceName;

  /// Creates a new [TableServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [cors] Specifies CORS rules for the Table service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Table service.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [tableServiceName] The name of the Table Service within the specified storage account. Table Service Name must be 'default'
  TableServicePropertiesArgs({
    required this.accountName,
    this.cors,
    required this.resourceGroupName,
    this.tableServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'cors': ?pulumi.Input.mapOptionalInputValue<CorsRules, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tableServiceName': ?tableServiceName,
    };
  }

  factory TableServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return TableServicePropertiesArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CorsRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableServiceName: (() { final guardedValue = map['tableServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

