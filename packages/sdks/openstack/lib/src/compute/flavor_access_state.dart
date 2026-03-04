// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlavorAccess resources.
class FlavorAccessState {
  /// The UUID of flavor to use. Changing this creates a new flavor access.
  final pulumi.Input<String>? flavorId;

  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new flavor access.
  final pulumi.Input<String>? region;

  /// The UUID of tenant which is allowed to use the flavor.
  /// Changing this creates a new flavor access.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FlavorAccessState].
  /// [flavorId] The UUID of flavor to use. Changing this creates a new flavor access.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [tenantId] The UUID of tenant which is allowed to use the flavor.
  FlavorAccessState({this.flavorId, this.region, this.tenantId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorId': ?flavorId,
      'region': ?region,
      'tenantId': ?tenantId,
    };
  }

  factory FlavorAccessState.fromMap(Map<String, dynamic> map) {
    return FlavorAccessState(
      flavorId: (() {
        final guardedValue = map['flavorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
