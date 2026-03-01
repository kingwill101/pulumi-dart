// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_trust_group_args_doc}
/// Arguments for getServerTrustGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_trust_group_args_doc}
class GetServerTrustGroupArgs {
  /// The name of the region where the resource is located.
  final pulumi.Input<String> locationName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server trust group.
  final pulumi.Input<String> serverTrustGroupName;

  /// Creates a new [GetServerTrustGroupArgs].
  /// [locationName] The name of the region where the resource is located.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverTrustGroupName] The name of the server trust group.
  GetServerTrustGroupArgs({
    required pulumi.Output<String> locationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverTrustGroupName,
  }) :
      locationName = pulumi.Input.asInput<String>(locationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverTrustGroupName = pulumi.Input.asInput<String>(serverTrustGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': locationName,
      'resourceGroupName': resourceGroupName,
      'serverTrustGroupName': serverTrustGroupName,
    };
  }

  factory GetServerTrustGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTrustGroupArgs(
      locationName: pulumi.Output.create<String>(map['locationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverTrustGroupName: pulumi.Output.create<String>(map['serverTrustGroupName'] as String),
    );
  }
}

