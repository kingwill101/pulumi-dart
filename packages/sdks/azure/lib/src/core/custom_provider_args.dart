// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_provider_action.dart';
import 'custom_provider_resource_type.dart';
import 'custom_provider_validation.dart';

/// {@template pulumi_core_custom_provider_custom_provider_args_doc}
/// The set of arguments for CustomProvider.
/// {@endtemplate}
/// {@macro pulumi_core_custom_provider_custom_provider_args_doc}
class CustomProviderArgs {
  /// Any number of `action` block as defined below. One of `resource_type` or `action` must be specified.
  final pulumi.Input<List<CustomProviderAction>>? actions;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Custom Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Any number of `resource_type` block as defined below. One of `resource_type` or `action` must be specified.
  final pulumi.Input<List<CustomProviderResourceType>>? resourceTypes;
  /// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// Any number of `validation` block as defined below.
  final pulumi.Input<List<CustomProviderValidation>>? validations;

  /// Creates a new [CustomProviderArgs].
  /// [actions] Any number of `action` block as defined below. One of `resource_type` or `action` must be specified.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Custom Provider. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
  /// [resourceTypes] Any number of `resource_type` block as defined below. One of `resource_type` or `action` must be specified.
  /// [tags] A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
  /// [validations] Any number of `validation` block as defined below.
  CustomProviderArgs({
    pulumi.Output<List<CustomProviderAction>>? actions,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<CustomProviderResourceType>>? resourceTypes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<CustomProviderValidation>>? validations,
  }) :
      actions = pulumi.Input.asOptionalInput<List<CustomProviderAction>>(actions),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceTypes = pulumi.Input.asOptionalInput<List<CustomProviderResourceType>>(resourceTypes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validations = pulumi.Input.asOptionalInput<List<CustomProviderValidation>>(validations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<CustomProviderAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<CustomProviderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceTypes': ?pulumi.Input.mapOptionalInputValue<List<CustomProviderResourceType>, List<Map<String, dynamic>>>(resourceTypes, (value) => pulumi.Input.encodeList<CustomProviderResourceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'validations': ?pulumi.Input.mapOptionalInputValue<List<CustomProviderValidation>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<CustomProviderValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomProviderArgs.fromMap(Map<String, dynamic> map) {
    return CustomProviderArgs(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<CustomProviderAction>>(pulumi.Input.decodeList<CustomProviderAction>(map['actions'], (value) => CustomProviderAction.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Output.create<List<CustomProviderResourceType>>(pulumi.Input.decodeList<CustomProviderResourceType>(map['resourceTypes'], (value) => CustomProviderResourceType.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      validations: map['validations'] == null ? null : pulumi.Output.create<List<CustomProviderValidation>>(pulumi.Input.decodeList<CustomProviderValidation>(map['validations'], (value) => CustomProviderValidation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

