// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application billing details definition.
class ApplicationBillingDetailsDefinitionResponse {
  /// The managed application resource usage Id.
  final pulumi.Input<String>? resourceUsageId;

  /// Creates a new [ApplicationBillingDetailsDefinitionResponse].
  /// [resourceUsageId] The managed application resource usage Id.
  ApplicationBillingDetailsDefinitionResponse({
    this.resourceUsageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUsageId': ?resourceUsageId,
    };
  }

  factory ApplicationBillingDetailsDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationBillingDetailsDefinitionResponse(
      resourceUsageId: (() { final guardedValue = map['resourceUsageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

