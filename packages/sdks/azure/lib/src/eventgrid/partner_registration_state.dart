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
  const PartnerRegistrationState({
    this.name,
    this.partnerRegistrationId,
    this.resourceGroupName,
    this.tags,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerRegistrationId: (() { final guardedValue = map['partnerRegistrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

