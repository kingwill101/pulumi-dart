// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_sql_sites_controller_args_doc}
/// Arguments for getSqlSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_sql_sites_controller_args_doc}
class GetSqlSitesControllerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// SQL site name.
  final pulumi.Input<String> sqlSiteName;

  /// Creates a new [GetSqlSitesControllerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [sqlSiteName] SQL site name.
  const GetSqlSitesControllerArgs({
    required this.resourceGroupName,
    required this.siteName,
    required this.sqlSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'sqlSiteName': sqlSiteName,
    };
  }

  factory GetSqlSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlSitesControllerArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      sqlSiteName: pulumi.Input.fromValue(map['sqlSiteName'] as String),
    );
  }
}
