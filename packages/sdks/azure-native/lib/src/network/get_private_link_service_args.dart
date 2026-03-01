// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_private_link_service_args_doc}
/// Arguments for getPrivateLinkService.
/// {@endtemplate}
/// {@macro pulumi_network_get_private_link_service_args_doc}
class GetPrivateLinkServiceArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the private link service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPrivateLinkServiceArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the private link service.
  GetPrivateLinkServiceArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPrivateLinkServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServiceArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

