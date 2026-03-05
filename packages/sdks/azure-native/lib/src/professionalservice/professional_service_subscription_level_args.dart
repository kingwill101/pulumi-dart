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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfessionalServiceCreationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

