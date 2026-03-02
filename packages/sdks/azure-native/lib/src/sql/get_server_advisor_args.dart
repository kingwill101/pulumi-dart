// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_advisor_args_doc}
/// Arguments for getServerAdvisor.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_advisor_args_doc}
class GetServerAdvisorArgs {
  /// The name of the Server Advisor.
  final pulumi.Input<String> advisorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerAdvisorArgs].
  /// [advisorName] The name of the Server Advisor.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetServerAdvisorArgs({
    required this.advisorName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advisorName': advisorName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerAdvisorArgs.fromMap(Map<String, dynamic> map) {
    return GetServerAdvisorArgs(
      advisorName: (map['advisorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

