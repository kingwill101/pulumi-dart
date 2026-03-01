// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedPrivateLinkService resources.
class SharedPrivateLinkServiceState {
  /// Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// Specify the id of the Azure Search Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? searchServiceId;
  /// The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected.
  final pulumi.Input<String>? status;
  /// Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subresourceName;
  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The sub resource name should match with the type of the target resource id that's being specified.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [SharedPrivateLinkServiceState].
  /// [name] Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [searchServiceId] Specify the id of the Azure Search Service. Changing this forces a new resource to be created.
  /// [status] The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected.
  /// [subresourceName] Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created.
  SharedPrivateLinkServiceState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? requestMessage,
    pulumi.Output<String>? searchServiceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subresourceName,
    pulumi.Output<String>? targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      searchServiceId = pulumi.Input.asOptionalInput<String>(searchServiceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      subresourceName = pulumi.Input.asOptionalInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'searchServiceId': ?searchServiceId,
      'status': ?status,
      'subresourceName': ?subresourceName,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory SharedPrivateLinkServiceState.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkServiceState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      searchServiceId: map['searchServiceId'] == null ? null : pulumi.Output.create<String>(map['searchServiceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subresourceName: map['subresourceName'] == null ? null : pulumi.Output.create<String>(map['subresourceName'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

