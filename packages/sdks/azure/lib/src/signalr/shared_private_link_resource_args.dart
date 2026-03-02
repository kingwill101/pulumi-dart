// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalr_shared_private_link_resource_shared_private_link_resource_args_doc}
/// The set of arguments for SharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_signalr_shared_private_link_resource_shared_private_link_resource_args_doc}
class SharedPrivateLinkResourceArgs {
  /// The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// The id of the Signalr Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> signalrServiceId;
  /// The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  final pulumi.Input<String> subResourceName;
  /// The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `sub_resource_name` should match with the type of the `target_resource_id` that's being specified.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [SharedPrivateLinkResourceArgs].
  /// [name] The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [signalrServiceId] The id of the Signalr Service. Changing this forces a new resource to be created.
  /// [subResourceName] The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  SharedPrivateLinkResourceArgs({
    this.name,
    this.requestMessage,
    required this.signalrServiceId,
    required this.subResourceName,
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'signalrServiceId': signalrServiceId,
      'subResourceName': subResourceName,
      'targetResourceId': targetResourceId,
    };
  }

  factory SharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage']! as String).input(),
      signalrServiceId: (map['signalrServiceId'] as String).input(),
      subResourceName: (map['subResourceName'] as String).input(),
      targetResourceId: (map['targetResourceId'] as String).input(),
    );
  }
}

