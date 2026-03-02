// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_ueba_args_doc}
/// The set of arguments for Ueba.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_ueba_args_doc}
class UebaArgs {
  /// The relevant data sources that enriched by ueba
  final pulumi.Input<List<String>>? dataSources;
  /// The kind of the setting
  /// Expected value is 'Ueba'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  final pulumi.Input<String>? settingsName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [UebaArgs].
  /// [dataSources] The relevant data sources that enriched by ueba
  /// [kind] The kind of the setting
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsName] The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  /// [workspaceName] The name of the workspace.
  UebaArgs({
    this.dataSources,
    required this.kind,
    required this.resourceGroupName,
    this.settingsName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSources': ?dataSources,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'settingsName': ?settingsName,
      'workspaceName': workspaceName,
    };
  }

  factory UebaArgs.fromMap(Map<String, dynamic> map) {
    return UebaArgs(
      dataSources: map['dataSources'] == null ? null : ((map['dataSources'] as List).cast<String>()).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      settingsName: map['settingsName'] == null ? null : (map['settingsName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

