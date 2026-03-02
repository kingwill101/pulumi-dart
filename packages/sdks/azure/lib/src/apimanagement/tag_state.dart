// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// The ID of the API Management. Changing this forces a new API Management Tag to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The display name of the API Management Tag. Defaults to the `name`.
  final pulumi.Input<String>? displayName;
  /// The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service.
  final pulumi.Input<String>? name;

  /// Creates a new [TagState].
  /// [apiManagementId] The ID of the API Management. Changing this forces a new API Management Tag to be created.
  /// [displayName] The display name of the API Management Tag. Defaults to the `name`.
  /// [name] The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service.
  TagState({
    this.apiManagementId,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      apiManagementId: map['apiManagementId'] == null ? null : (map['apiManagementId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

