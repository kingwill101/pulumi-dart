// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicesAccount resources.
class ServicesAccountState {
  /// Customer owned application ID. Changing this forces a new Account to be created.
  final pulumi.Input<String>? applicationId;
  /// Billing Plan Id.
  final pulumi.Input<String>? billingPlanId;
  /// Specifies the name of this Account. Changing this forces a new Account to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServicesAccountState].
  /// [applicationId] Customer owned application ID. Changing this forces a new Account to be created.
  /// [billingPlanId] Billing Plan Id.
  /// [name] Specifies the name of this Account. Changing this forces a new Account to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created.
  /// [tags] A mapping of tags which should be assigned to the Account.
  ServicesAccountState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? billingPlanId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      billingPlanId = pulumi.Input.asOptionalInput<String>(billingPlanId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'billingPlanId': ?billingPlanId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServicesAccountState.fromMap(Map<String, dynamic> map) {
    return ServicesAccountState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      billingPlanId: map['billingPlanId'] == null ? null : pulumi.Output.create<String>(map['billingPlanId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

