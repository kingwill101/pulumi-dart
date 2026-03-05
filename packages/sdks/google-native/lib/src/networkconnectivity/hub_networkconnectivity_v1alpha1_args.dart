// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_hub_networkconnectivity_v1alpha1_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_hub_networkconnectivity_v1alpha1_args_doc}
class HubNetworkconnectivityV1alpha1Args {
  /// Time when the Hub was created.
  final pulumi.Input<String>? createTime;
  /// Short description of the hub resource.
  final pulumi.Input<String>? description;
  /// Optional. Unique id for the Hub to create.
  final pulumi.Input<String>? hubId;
  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The name of a Hub resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Time when the Hub was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [HubNetworkconnectivityV1alpha1Args].
  /// [createTime] Time when the Hub was created.
  /// [description] Short description of the hub resource.
  /// [hubId] Optional. Unique id for the Hub to create.
  /// [labels] User-defined labels.
  /// [name] Immutable. The name of a Hub resource.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [updateTime] Time when the Hub was updated.
  HubNetworkconnectivityV1alpha1Args({
    this.createTime,
    this.description,
    this.hubId,
    this.labels,
    this.name,
    this.project,
    this.requestId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'hubId': ?hubId,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'updateTime': ?updateTime,
    };
  }

  factory HubNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return HubNetworkconnectivityV1alpha1Args(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubId: (() { final guardedValue = map['hubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

