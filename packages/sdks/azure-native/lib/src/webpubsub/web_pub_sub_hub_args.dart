// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_pub_sub_hub_properties.dart';

/// {@template pulumi_webpubsub_web_pub_sub_hub_args_doc}
/// The set of arguments for WebPubSubHub.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_web_pub_sub_hub_args_doc}
class WebPubSubHubArgs {
  /// The hub name.
  final pulumi.Input<String>? hubName;
  /// Properties of a hub.
  final pulumi.Input<WebPubSubHubProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [WebPubSubHubArgs].
  /// [hubName] The hub name.
  /// [properties] Properties of a hub.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  const WebPubSubHubArgs({
    this.hubName,
    required this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': ?hubName,
      'properties': pulumi.Input.mapInputValue<WebPubSubHubProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory WebPubSubHubArgs.fromMap(Map<String, dynamic> map) {
    return WebPubSubHubArgs(
      hubName: (() { final guardedValue = map['hubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(WebPubSubHubProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
