// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_provider_action.dart';
import 'custom_provider_resource_type.dart';
import 'custom_provider_validation.dart';

/// Input properties used for looking up and filtering CustomProvider resources.
class CustomProviderState {
  /// Any number of `action` block as defined below. One of `resource_type` or `action` must be specified.
  final pulumi.Input<List<CustomProviderAction>>? actions;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Custom Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Any number of `resource_type` block as defined below. One of `resource_type` or `action` must be specified.
  final pulumi.Input<List<CustomProviderResourceType>>? resourceTypes;
  /// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// Any number of `validation` block as defined below.
  final pulumi.Input<List<CustomProviderValidation>>? validations;

  /// Creates a new [CustomProviderState].
  /// [actions] Any number of `action` block as defined below. One of `resource_type` or `action` must be specified.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Custom Provider. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
  /// [resourceTypes] Any number of `resource_type` block as defined below. One of `resource_type` or `action` must be specified.
  /// [tags] A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
  /// [validations] Any number of `validation` block as defined below.
  const CustomProviderState({
    this.actions,
    this.location,
    this.name,
    this.resourceGroupName,
    this.resourceTypes,
    this.tags,
    this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<CustomProviderAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<CustomProviderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceTypes': ?pulumi.Input.mapOptionalInputValue<List<CustomProviderResourceType>, List<Map<String, dynamic>>>(resourceTypes, (value) => pulumi.Input.encodeList<CustomProviderResourceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'validations': ?pulumi.Input.mapOptionalInputValue<List<CustomProviderValidation>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<CustomProviderValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomProviderState.fromMap(Map<String, dynamic> map) {
    return CustomProviderState(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomProviderAction>(guardedValue, (value) => CustomProviderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomProviderResourceType>(guardedValue, (value) => CustomProviderResourceType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validations: (() { final guardedValue = map['validations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomProviderValidation>(guardedValue, (value) => CustomProviderValidation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

