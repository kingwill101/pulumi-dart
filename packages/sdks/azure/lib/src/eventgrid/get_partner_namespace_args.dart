// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_namespace_get_partner_namespace_args_doc}
/// Arguments for getPartnerNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_namespace_get_partner_namespace_args_doc}
class GetPartnerNamespaceArgs {
  /// The name of the Event Grid Partner Namespace resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Event Grid Partner Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerNamespaceArgs].
  /// [name] The name of the Event Grid Partner Namespace resource.
  /// [resourceGroupName] The name of the resource group in which the Event Grid Partner Namespace exists.
  const GetPartnerNamespaceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
