// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the On Premise Sql resource that was assessed
class OnPremiseSqlResourceDetailsResponse {
  /// The Sql database name installed on the machine
  final pulumi.Input<String> databaseName;

  /// The name of the machine
  final pulumi.Input<String> machineName;

  /// The Sql server name installed on the machine
  final pulumi.Input<String> serverName;

  /// The platform where the assessed resource resides
  /// Expected value is 'OnPremiseSql'.
  final pulumi.Input<String> source;

  /// The oms agent Id installed on the machine
  final pulumi.Input<String> sourceComputerId;

  /// The unique Id of the machine
  final pulumi.Input<String> vmuuid;

  /// Azure resource Id of the workspace the machine is attached to
  final pulumi.Input<String> workspaceId;

  /// Creates a new [OnPremiseSqlResourceDetailsResponse].
  /// [databaseName] The Sql database name installed on the machine
  /// [machineName] The name of the machine
  /// [serverName] The Sql server name installed on the machine
  /// [source] The platform where the assessed resource resides
  /// [sourceComputerId] The oms agent Id installed on the machine
  /// [vmuuid] The unique Id of the machine
  /// [workspaceId] Azure resource Id of the workspace the machine is attached to
  OnPremiseSqlResourceDetailsResponse({
    required this.databaseName,
    required this.machineName,
    required this.serverName,
    required this.source,
    required this.sourceComputerId,
    required this.vmuuid,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'machineName': machineName,
      'serverName': serverName,
      'source': source,
      'sourceComputerId': sourceComputerId,
      'vmuuid': vmuuid,
      'workspaceId': workspaceId,
    };
  }

  factory OnPremiseSqlResourceDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OnPremiseSqlResourceDetailsResponse(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceComputerId: pulumi.Input.fromValue(
        map['sourceComputerId'] as String,
      ),
      vmuuid: pulumi.Input.fromValue(map['vmuuid'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
