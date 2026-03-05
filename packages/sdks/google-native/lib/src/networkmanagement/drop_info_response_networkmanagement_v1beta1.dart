// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the final state "drop" and associated resource.
class DropInfoResponseNetworkmanagementV1beta1 {
  /// Cause that the packet is dropped.
  final pulumi.Input<String> cause;
  /// URI of the resource that caused the drop.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [DropInfoResponseNetworkmanagementV1beta1].
  /// [cause] Cause that the packet is dropped.
  /// [resourceUri] URI of the resource that caused the drop.
  DropInfoResponseNetworkmanagementV1beta1({
    required this.cause,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': cause,
      'resourceUri': resourceUri,
    };
  }

  factory DropInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return DropInfoResponseNetworkmanagementV1beta1(
      cause: pulumi.Input.fromValue(map['cause'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

