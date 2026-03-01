// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LimitV3 resources.
class LimitV3State {
  /// Description of the limit.
  final pulumi.Input<String>? description;
  /// The domain the limit applies to. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? domainId;
  /// The project the limit applies to. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? region;
  /// Integer for the actual limit.
  final pulumi.Input<int>? resourceLimit;
  /// The resource that the limit applies to. Changing
  /// this creates a new Limit.
  final pulumi.Input<String>? resourceName;
  /// The service the limit applies to. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? serviceId;

  /// Creates a new [LimitV3State].
  /// [description] Description of the limit.
  /// [domainId] The domain the limit applies to. Changing this
  /// [projectId] The project the limit applies to. Changing this
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [resourceLimit] Integer for the actual limit.
  /// [resourceName] The resource that the limit applies to. Changing
  /// [serviceId] The service the limit applies to. Changing this
  LimitV3State({
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? resourceLimit,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? serviceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceLimit = pulumi.Input.asOptionalInput<int>(resourceLimit),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'projectId': ?projectId,
      'region': ?region,
      'resourceLimit': ?resourceLimit,
      'resourceName': ?resourceName,
      'serviceId': ?serviceId,
    };
  }

  factory LimitV3State.fromMap(Map<String, dynamic> map) {
    return LimitV3State(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceLimit: map['resourceLimit'] == null ? null : pulumi.Output.create<int>(map['resourceLimit'] as int),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

