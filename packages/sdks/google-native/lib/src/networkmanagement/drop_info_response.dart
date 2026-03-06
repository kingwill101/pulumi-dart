// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the final state "drop" and associated resource.
class DropInfoResponse {
  /// Cause that the packet is dropped.
  final pulumi.Input<String> cause;
  /// URI of the resource that caused the drop.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [DropInfoResponse].
  /// [cause] Cause that the packet is dropped.
  /// [resourceUri] URI of the resource that caused the drop.
  const DropInfoResponse({
    required this.cause,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': cause,
      'resourceUri': resourceUri,
    };
  }

  factory DropInfoResponse.fromMap(Map<String, dynamic> map) {
    return DropInfoResponse(
      cause: pulumi.Input.fromValue(map['cause'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

