// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shares_result_resource.dart';

class GetSharesResult {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// The display name of an account.
  final pulumi.Input<String> accountName;
  /// The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int> associatedRecipientCount;
  /// The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int> associatingRecipientCount;
  /// When the share was created.
  final pulumi.Input<String> created;
  /// The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int> disassociatedRecipientCount;
  /// The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int> disassociatingRecipientCount;
  /// Share identifier tag.
  final pulumi.Input<String> id;
  /// Available values: "sent", "received".
  final pulumi.Input<String> kind;
  /// When the share was modified.
  final pulumi.Input<String> modified;
  /// The name of the share.
  final pulumi.Input<String> name;
  /// Organization identifier.
  final pulumi.Input<String> organizationId;
  /// A list of resources that are part of the share. This field is only included when requested via the 'include_resources' parameter.
  final pulumi.Input<List<GetSharesResultResource>> resources;
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String> status;
  /// Available values: "account", "organization".
  final pulumi.Input<String> targetType;

  /// Creates a new [GetSharesResult].
  /// [accountId] Account identifier.
  /// [accountName] The display name of an account.
  /// [associatedRecipientCount] The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [associatingRecipientCount] The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [created] When the share was created.
  /// [disassociatedRecipientCount] The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [disassociatingRecipientCount] The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [id] Share identifier tag.
  /// [kind] Available values: "sent", "received".
  /// [modified] When the share was modified.
  /// [name] The name of the share.
  /// [organizationId] Organization identifier.
  /// [resources] A list of resources that are part of the share. This field is only included when requested via the 'include_resources' parameter.
  /// [status] Available values: "active", "deleting", "deleted".
  /// [targetType] Available values: "account", "organization".
  const GetSharesResult({
    required this.accountId,
    required this.accountName,
    required this.associatedRecipientCount,
    required this.associatingRecipientCount,
    required this.created,
    required this.disassociatedRecipientCount,
    required this.disassociatingRecipientCount,
    required this.id,
    required this.kind,
    required this.modified,
    required this.name,
    required this.organizationId,
    required this.resources,
    required this.status,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'accountName': accountName,
      'associatedRecipientCount': associatedRecipientCount,
      'associatingRecipientCount': associatingRecipientCount,
      'created': created,
      'disassociatedRecipientCount': disassociatedRecipientCount,
      'disassociatingRecipientCount': disassociatingRecipientCount,
      'id': id,
      'kind': kind,
      'modified': modified,
      'name': name,
      'organizationId': organizationId,
      'resources': pulumi.Input.mapInputValue<List<GetSharesResultResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetSharesResultResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'targetType': targetType,
    };
  }

  factory GetSharesResult.fromMap(Map<String, dynamic> map) {
    return GetSharesResult(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      associatedRecipientCount: pulumi.Input.fromValue((map['associatedRecipientCount'] as num).toInt()),
      associatingRecipientCount: pulumi.Input.fromValue((map['associatingRecipientCount'] as num).toInt()),
      created: pulumi.Input.fromValue(map['created'] as String),
      disassociatedRecipientCount: pulumi.Input.fromValue((map['disassociatedRecipientCount'] as num).toInt()),
      disassociatingRecipientCount: pulumi.Input.fromValue((map['disassociatingRecipientCount'] as num).toInt()),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSharesResultResource>(map['resources']!, (value) => GetSharesResultResource.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}
