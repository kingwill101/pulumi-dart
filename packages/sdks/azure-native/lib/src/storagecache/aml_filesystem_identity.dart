// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_identity_type.dart';

/// Managed Identity properties.
class AmlFilesystemIdentity {
  /// The type of identity used for the resource.
  final pulumi.Input<AmlFilesystemIdentityType>? type;
  /// A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [AmlFilesystemIdentity].
  /// [type] The type of identity used for the resource.
  /// [userAssignedIdentities] A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  AmlFilesystemIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory AmlFilesystemIdentity.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemIdentity(
      type: map['type'] == null ? null : (AmlFilesystemIdentityType.fromValue(map['type']! as String)).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

