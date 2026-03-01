import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_args.dart';
import 'get_catalog_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Gets the catalog specified by the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_v1_get_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogResult> getCatalog(
  GetCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:biglake/v1:getCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogResult.fromMap(result);
}

/// Gets the database specified by the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_v1_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:biglake/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Gets the table specified by the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_biglake_v1_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:biglake/v1:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}
