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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partnerRegistrationId: map['partnerRegistrationId'] == null ? null : (map['partnerRegistrationId'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

