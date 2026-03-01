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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ProfessionalServiceCreationProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ProfessionalServiceCreationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ProfessionalServiceCreationProperties>(ProfessionalServiceCreationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

