// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_server_sites_controller_args_doc}
/// Arguments for getServerSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_server_sites_controller_args_doc}
class GetServerSitesControllerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [GetServerSitesControllerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  GetServerSitesControllerArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetServerSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetServerSitesControllerArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
    );
  }
}

