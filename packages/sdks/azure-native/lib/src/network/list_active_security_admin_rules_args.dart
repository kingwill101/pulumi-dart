// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_active_security_admin_rules_args_doc}
/// Arguments for listActiveSecurityAdminRules.
/// {@endtemplate}
/// {@macro pulumi_network_list_active_security_admin_rules_args_doc}
class ListActiveSecurityAdminRulesArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// List of regions.
  final pulumi.Input<List<String>?>? regions;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String?>? skipToken;
  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int?>? top;

  /// Creates a new [ListActiveSecurityAdminRulesArgs].
  /// [networkManagerName] The name of the network manager.
  /// [regions] List of regions.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  const ListActiveSecurityAdminRulesArgs({
    required this.networkManagerName,
    this.regions,
    required this.resourceGroupName,
    this.skipToken,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'regions': ?regions,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
    };
  }

  factory ListActiveSecurityAdminRulesArgs.fromMap(Map<String, dynamic> map) {
    return ListActiveSecurityAdminRulesArgs(
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
