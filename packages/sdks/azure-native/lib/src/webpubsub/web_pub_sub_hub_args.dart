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
  WebPubSubHubArgs({
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
      hubName: map['hubName'] == null ? null : (map['hubName']! as String).input(),
      properties: (WebPubSubHubProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

