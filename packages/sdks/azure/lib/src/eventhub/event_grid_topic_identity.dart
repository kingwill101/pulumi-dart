// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventGridTopicIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Topic.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned`
  ///
  /// &gt; **Note:** When `type` is set to `SystemAssigned`, The assigned `principalId` and `tenantId` can be retrieved after the Event Grid Topic has been created. More details are available below.
  final pulumi.Input<List<String>?>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Event Grid Topic. Possible values are `SystemAssigned`, `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [EventGridTopicIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Topic.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Event Grid Topic. Possible values are `SystemAssigned`, `UserAssigned`.
  const EventGridTopicIdentity({
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

  factory EventGridTopicIdentity.fromMap(Map<String, dynamic> map) {
    return EventGridTopicIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
