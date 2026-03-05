// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SocketioIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs for this Web PubSub Service.
  ///
  /// &gt; **Note:** `identity_ids` is required when `type` is `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// The type of Managed Identity for this Web PubSub Service. Possible Values are `SystemAssigned` and `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [SocketioIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs for this Web PubSub Service.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of Managed Identity for this Web PubSub Service. Possible Values are `SystemAssigned` and `UserAssigned`.
  SocketioIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory SocketioIdentity.fromMap(Map<String, dynamic> map) {
    return SocketioIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

