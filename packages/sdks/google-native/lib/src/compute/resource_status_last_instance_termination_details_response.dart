// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceStatusLastInstanceTerminationDetailsResponse {
  /// Reason for termination
  final pulumi.Input<String> terminationReason;

  /// Creates a new [ResourceStatusLastInstanceTerminationDetailsResponse].
  /// [terminationReason] Reason for termination
  const ResourceStatusLastInstanceTerminationDetailsResponse({
    required this.terminationReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminationReason': terminationReason,
    };
  }

  factory ResourceStatusLastInstanceTerminationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusLastInstanceTerminationDetailsResponse(
      terminationReason: pulumi.Input.fromValue(map['terminationReason'] as String),
    );
  }
}

