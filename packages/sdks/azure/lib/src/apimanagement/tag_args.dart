// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_tag_args_doc}
class TagArgs {
  /// The ID of the API Management. Changing this forces a new API Management Tag to be created.
  final pulumi.Input<String> apiManagementId;

  /// The display name of the API Management Tag. Defaults to the `name`.
  final pulumi.Input<String>? displayName;

  /// The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service.
  final pulumi.Input<String>? name;

  /// Creates a new [TagArgs].
  /// [apiManagementId] The ID of the API Management. Changing this forces a new API Management Tag to be created.
  /// [displayName] The display name of the API Management Tag. Defaults to the `name`.
  /// [name] The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service.
  TagArgs({required this.apiManagementId, this.displayName, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      apiManagementId: pulumi.Input.fromValue(map['apiManagementId'] as String),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
