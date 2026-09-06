// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed identity auth properties for dataShare connection.
class ManagedIdentityAuthPropertiesResponse {
  /// ARM ResourceId of the managed identity that should be used to authenticate to the backing data source.
  final pulumi.Input<String?>? identityResourceId;
  /// The auth type supported for bucket connection in storage connector.
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIdentityAuthPropertiesResponse].
  /// [identityResourceId] ARM ResourceId of the managed identity that should be used to authenticate to the backing data source.
  /// [type] The auth type supported for bucket connection in storage connector.
  const ManagedIdentityAuthPropertiesResponse({
    this.identityResourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityResourceId': ?identityResourceId,
      'type': type,
    };
  }

  factory ManagedIdentityAuthPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthPropertiesResponse(
      identityResourceId: (() { final guardedValue = map['identityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
