// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareResourceFilter {
  /// Filter share resources by resource_type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final pulumi.Input<String?>? resourceType;
  /// Filter share resources by status.
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetShareResourceFilter].
  /// [resourceType] Filter share resources by resource_type.
  /// [status] Filter share resources by status.
  const GetShareResourceFilter({
    this.resourceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': ?resourceType,
      'status': ?status,
    };
  }

  factory GetShareResourceFilter.fromMap(Map<String, dynamic> map) {
    return GetShareResourceFilter(
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
