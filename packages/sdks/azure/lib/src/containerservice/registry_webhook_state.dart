// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryWebhook resources.
class RegistryWebhookState {
  /// A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: `push`, `delete`, `quarantine`, `chart_push`, `chart_delete`
  final pulumi.Input<List<String>>? actions;
  /// Custom headers that will be added to the webhook notifications request.
  final pulumi.Input<Map<String, String>>? customHeaders;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Container Registry Webhook. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? registryName;
  /// The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the scope of repositories that can trigger an event. For example, `foo:*` means events for all tags under repository `foo`. `foo:bar` means events for 'foo:bar' only. `foo` is equivalent to `foo:latest`. Empty means all events. Defaults to `""`.
  final pulumi.Input<String>? scope;
  /// Specifies the service URI for the Webhook to post notifications.
  final pulumi.Input<String>? serviceUri;
  /// Specifies if this Webhook triggers notifications or not. Valid values: `enabled` and `disabled`. Default is `enabled`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RegistryWebhookState].
  /// [actions] A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: `push`, `delete`, `quarantine`, `chart_push`, `chart_delete`
  /// [customHeaders] Custom headers that will be added to the webhook notifications request.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container Registry Webhook. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [registryName] The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created.
  /// [scope] Specifies the scope of repositories that can trigger an event. For example, `foo:*` means events for all tags under repository `foo`. `foo:bar` means events for 'foo:bar' only. `foo` is equivalent to `foo:latest`. Empty means all events. Defaults to `""`.
  /// [serviceUri] Specifies the service URI for the Webhook to post notifications.
  /// [status] Specifies if this Webhook triggers notifications or not. Valid values: `enabled` and `disabled`. Default is `enabled`.
  /// [tags] A mapping of tags to assign to the resource.
  RegistryWebhookState({
    this.actions,
    this.customHeaders,
    this.location,
    this.name,
    this.registryName,
    this.resourceGroupName,
    this.scope,
    this.serviceUri,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'customHeaders': ?customHeaders,
      'location': ?location,
      'name': ?name,
      'registryName': ?registryName,
      'resourceGroupName': ?resourceGroupName,
      'scope': ?scope,
      'serviceUri': ?serviceUri,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory RegistryWebhookState.fromMap(Map<String, dynamic> map) {
    return RegistryWebhookState(
      actions: map['actions'] == null ? null : ((map['actions'] as List).cast<String>()).input(),
      customHeaders: map['customHeaders'] == null ? null : ((map['customHeaders'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      registryName: map['registryName'] == null ? null : (map['registryName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      serviceUri: map['serviceUri'] == null ? null : (map['serviceUri'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

