// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_flavor_access_flavor_access_args_doc}
/// The set of arguments for FlavorAccess.
/// {@endtemplate}
/// {@macro pulumi_compute_flavor_access_flavor_access_args_doc}
class FlavorAccessArgs {
  /// The UUID of flavor to use. Changing this creates a new flavor access.
  final pulumi.Input<String> flavorId;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new flavor access.
  final pulumi.Input<String>? region;
  /// The UUID of tenant which is allowed to use the flavor.
  /// Changing this creates a new flavor access.
  final pulumi.Input<String> tenantId;

  /// Creates a new [FlavorAccessArgs].
  /// [flavorId] The UUID of flavor to use. Changing this creates a new flavor access.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [tenantId] The UUID of tenant which is allowed to use the flavor.
  FlavorAccessArgs({
    required pulumi.Output<String> flavorId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> tenantId,
  }) :
      flavorId = pulumi.Input.asInput<String>(flavorId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorId': flavorId,
      'region': ?region,
      'tenantId': tenantId,
    };
  }

  factory FlavorAccessArgs.fromMap(Map<String, dynamic> map) {
    return FlavorAccessArgs(
      flavorId: pulumi.Output.create<String>(map['flavorId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

