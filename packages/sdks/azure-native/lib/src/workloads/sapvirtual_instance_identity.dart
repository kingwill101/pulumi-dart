// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed service identity (user assigned identities)
class SAPVirtualInstanceIdentity {
  /// The type of managed identity assigned to this resource.
  final pulumi.Input<String> type;
  /// The identities assigned to this resource by the user.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [SAPVirtualInstanceIdentity].
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  const SAPVirtualInstanceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory SAPVirtualInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return SAPVirtualInstanceIdentity(
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

