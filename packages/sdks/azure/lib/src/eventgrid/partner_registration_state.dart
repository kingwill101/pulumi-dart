// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PartnerRegistration resources.
class PartnerRegistrationState {
  /// The name which should be used for this EventGrid Partner Registration. Changing this forces a new EventGrid Partner Registration to be created.
  final pulumi.Input<String>? name;
  /// The immutable id of the corresponding partner registration.
  final pulumi.Input<String>? partnerRegistrationId;
  /// The name of the Resource Group where the EventGrid Partner Registration should exist. Changing this forces a new EventGrid Partner Registration to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the EventGrid Partner Registration.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerRegistrationState].
  /// [name] The name which should be used for this EventGrid Partner Registration. Changing this forces a new EventGrid Partner Registration to be created.
  /// [partnerRegistrationId] The immutable id of the corresponding partner registration.
  /// [resourceGroupName] The name of the Resource Group where the EventGrid Partner Registration should exist. Changing this forces a new EventGrid Partner Registration to be created.
  /// [tags] A mapping of tags which should be assigned to the EventGrid Partner Registration.
  PartnerRegistrationState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? partnerRegistrationId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      partnerRegistrationId = pulumi.Input.asOptionalInput<String>(partnerRegistrationId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'partnerRegistrationId': ?partnerRegistrationId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerRegistrationState.fromMap(Map<String, dynamic> map) {
    return PartnerRegistrationState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partnerRegistrationId: map['partnerRegistrationId'] == null ? null : pulumi.Output.create<String>(map['partnerRegistrationId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

