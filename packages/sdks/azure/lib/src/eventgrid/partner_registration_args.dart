// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_partner_registration_partner_registration_args_doc}
/// The set of arguments for PartnerRegistration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_registration_partner_registration_args_doc}
class PartnerRegistrationArgs {
  /// The name which should be used for this EventGrid Partner Registration. Changing this forces a new EventGrid Partner Registration to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the EventGrid Partner Registration should exist. Changing this forces a new EventGrid Partner Registration to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the EventGrid Partner Registration.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerRegistrationArgs].
  /// [name] The name which should be used for this EventGrid Partner Registration. Changing this forces a new EventGrid Partner Registration to be created.
  /// [resourceGroupName] The name of the Resource Group where the EventGrid Partner Registration should exist. Changing this forces a new EventGrid Partner Registration to be created.
  /// [tags] A mapping of tags which should be assigned to the EventGrid Partner Registration.
  PartnerRegistrationArgs({
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return PartnerRegistrationArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

