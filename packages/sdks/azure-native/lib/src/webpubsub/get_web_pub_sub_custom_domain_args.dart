// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_custom_domain_args_doc}
/// Arguments for getWebPubSubCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_custom_domain_args_doc}
class GetWebPubSubCustomDomainArgs {
  /// Custom domain name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubCustomDomainArgs].
  /// [name] Custom domain name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  const GetWebPubSubCustomDomainArgs({
    required this.name,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubCustomDomainArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
