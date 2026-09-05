// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubNamespaceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  ///
  /// &gt; **Note:** Due to the limitation of the current Azure API, once an EventHub Namespace has been assigned an identity, it cannot be removed.
  final pulumi.Input<List<String>?>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are `SystemAssigned` or `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [EventHubNamespaceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are `SystemAssigned` or `UserAssigned`.
  const EventHubNamespaceIdentity({
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

  factory EventHubNamespaceIdentity.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
