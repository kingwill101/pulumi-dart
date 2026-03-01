// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedPrivateLinkResource resources.
class SharedPrivateLinkResourceState {
  /// The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// The id of the Signalr Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? signalrServiceId;
  /// The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  final pulumi.Input<String>? status;
  /// The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subResourceName;
  /// The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `sub_resource_name` should match with the type of the `target_resource_id` that's being specified.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [SharedPrivateLinkResourceState].
  /// [name] The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [signalrServiceId] The id of the Signalr Service. Changing this forces a new resource to be created.
  /// [status] The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  /// [subResourceName] The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  SharedPrivateLinkResourceState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? requestMessage,
    pulumi.Output<String>? signalrServiceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subResourceName,
    pulumi.Output<String>? targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      signalrServiceId = pulumi.Input.asOptionalInput<String>(signalrServiceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      subResourceName = pulumi.Input.asOptionalInput<String>(subResourceName),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'signalrServiceId': ?signalrServiceId,
      'status': ?status,
      'subResourceName': ?subResourceName,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory SharedPrivateLinkResourceState.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      signalrServiceId: map['signalrServiceId'] == null ? null : pulumi.Output.create<String>(map['signalrServiceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subResourceName: map['subResourceName'] == null ? null : pulumi.Output.create<String>(map['subResourceName'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

