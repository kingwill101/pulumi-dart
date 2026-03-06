// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_hub_args_doc}
/// Arguments for getWebPubSubHub.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_hub_args_doc}
class GetWebPubSubHubArgs {
  /// The hub name.
  final pulumi.Input<String> hubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubHubArgs].
  /// [hubName] The hub name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  const GetWebPubSubHubArgs({
    required this.hubName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubHubArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubHubArgs(
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

