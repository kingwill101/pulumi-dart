// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryWebook resources.
class RegistryWebookState {
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

  /// Creates a new [RegistryWebookState].
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
  RegistryWebookState({
    pulumi.Output<List<String>>? actions,
    pulumi.Output<Map<String, String>>? customHeaders,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? registryName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? scope,
    pulumi.Output<String>? serviceUri,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actions = pulumi.Input.asOptionalInput<List<String>>(actions),
      customHeaders = pulumi.Input.asOptionalInput<Map<String, String>>(customHeaders),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      registryName = pulumi.Input.asOptionalInput<String>(registryName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      serviceUri = pulumi.Input.asOptionalInput<String>(serviceUri),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory RegistryWebookState.fromMap(Map<String, dynamic> map) {
    return RegistryWebookState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<String>>((map['actions'] as List).cast<String>()),
      customHeaders: map['customHeaders'] == null ? null : pulumi.Output.create<Map<String, String>>((map['customHeaders'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      registryName: map['registryName'] == null ? null : pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      serviceUri: map['serviceUri'] == null ? null : pulumi.Output.create<String>(map['serviceUri'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

