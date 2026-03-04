// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the image template.
class ImageTemplateIdentity {
  /// The type of identity used for the image template. The type 'None' will remove any identities from the image template.
  final pulumi.Input<ResourceIdentityType>? type;

  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ImageTemplateIdentity].
  /// [type] The type of identity used for the image template. The type 'None' will remove any identities from the image template.
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  ImageTemplateIdentity({this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(
        type,
        (value) => value.wireValue,
      ),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ImageTemplateIdentity.fromMap(Map<String, dynamic> map) {
    return ImageTemplateIdentity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceIdentityType.fromValue(guardedValue as String),
        );
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
