// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'professional_service_creation_properties.dart';

/// {@template pulumi_professionalservice_professional_service_subscription_level_args_doc}
/// The set of arguments for ProfessionalServiceSubscriptionLevel.
/// {@endtemplate}
/// {@macro pulumi_professionalservice_professional_service_subscription_level_args_doc}
class ProfessionalServiceSubscriptionLevelArgs {
  /// Resource location. Only value allowed for ProfessionalService is 'global'
  final pulumi.Input<String>? location;
  /// The resource name
  final pulumi.Input<String>? name;
  /// Properties of the ProfessionalService resource that are relevant for creation.
  final pulumi.Input<ProfessionalServiceCreationProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String>? resourceName;
  /// The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)
  final pulumi.Input<String>? subscriptionId;
  /// the resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfessionalServiceSubscriptionLevelArgs].
  /// [location] Resource location. Only value allowed for ProfessionalService is 'global'
  /// [name] The resource name
  /// [properties] Properties of the ProfessionalService resource that are relevant for creation.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the resource.
  /// [subscriptionId] The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)
  /// [tags] the resource tags.
  ProfessionalServiceSubscriptionLevelArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProfessionalServiceCreationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory ProfessionalServiceSubscriptionLevelArgs.fromMap(Map<String, dynamic> map) {
    return ProfessionalServiceSubscriptionLevelArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (ProfessionalServiceCreationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

