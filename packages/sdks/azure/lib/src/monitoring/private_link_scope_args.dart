// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_private_link_scope_private_link_scope_args_doc}
/// The set of arguments for PrivateLinkScope.
/// {@endtemplate}
/// {@macro pulumi_monitoring_private_link_scope_private_link_scope_args_doc}
class PrivateLinkScopeArgs {
  /// The default ingestion access mode for the associated private endpoints in scope. Possible values are `Open` and `PrivateOnly`. Defaults to `Open`.
  final pulumi.Input<String>? ingestionAccessMode;
  /// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The default query access mode for hte associated private endpoints in scope. Possible values are `Open` and `PrivateOnly`. Defaults to `Open`.
  final pulumi.Input<String>? queryAccessMode;
  /// The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Monitor Private Link Scope.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkScopeArgs].
  /// [ingestionAccessMode] The default ingestion access mode for the associated private endpoints in scope. Possible values are `Open` and `PrivateOnly`. Defaults to `Open`.
  /// [name] The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  /// [queryAccessMode] The default query access mode for hte associated private endpoints in scope. Possible values are `Open` and `PrivateOnly`. Defaults to `Open`.
  /// [resourceGroupName] The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Monitor Private Link Scope.
  PrivateLinkScopeArgs({
    this.ingestionAccessMode,
    this.name,
    this.queryAccessMode,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionAccessMode': ?ingestionAccessMode,
      'name': ?name,
      'queryAccessMode': ?queryAccessMode,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkScopeArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopeArgs(
      ingestionAccessMode: map['ingestionAccessMode'] == null ? null : (map['ingestionAccessMode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      queryAccessMode: map['queryAccessMode'] == null ? null : (map['queryAccessMode']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

