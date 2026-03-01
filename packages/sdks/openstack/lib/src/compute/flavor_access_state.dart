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
  FlavorAccessState({
    pulumi.Output<String>? flavorId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
  }) :
      flavorId = pulumi.Input.asOptionalInput<String>(flavorId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorId': ?flavorId,
      'region': ?region,
      'tenantId': ?tenantId,
    };
  }

  factory FlavorAccessState.fromMap(Map<String, dynamic> map) {
    return FlavorAccessState(
      flavorId: map['flavorId'] == null ? null : pulumi.Output.create<String>(map['flavorId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

