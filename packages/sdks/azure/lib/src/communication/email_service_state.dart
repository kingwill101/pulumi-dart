// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailService resources.
class EmailServiceState {
  /// The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` `usgov` and `United States`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? dataLocation;
  /// The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Email Communication Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmailServiceState].
  /// [dataLocation] The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` `usgov` and `United States`. Changing this forces a new Email Communication Service to be created.
  /// [name] The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created.
  /// [resourceGroupName] The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created.
  /// [tags] A mapping of tags which should be assigned to the Email Communication Service.
  EmailServiceState({
    pulumi.Output<String>? dataLocation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataLocation = pulumi.Input.asOptionalInput<String>(dataLocation),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': ?dataLocation,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EmailServiceState.fromMap(Map<String, dynamic> map) {
    return EmailServiceState(
      dataLocation: map['dataLocation'] == null ? null : pulumi.Output.create<String>(map['dataLocation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

