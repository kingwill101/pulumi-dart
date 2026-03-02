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
    this.description,
    this.domainId,
    this.projectId,
    this.region,
    this.resourceLimit,
    this.resourceName,
    this.serviceId,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceLimit: map['resourceLimit'] == null ? null : (map['resourceLimit'] as int).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
    );
  }
}

