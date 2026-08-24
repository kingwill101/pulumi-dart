// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_recipients_result_resource.dart';

class GetShareRecipientsResult {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Share Recipient association status.
  /// Available values: "associating", "associated", "disassociating", "disassociated".
  final pulumi.Input<String> associationStatus;
  /// When the share was created.
  final pulumi.Input<String> created;
  /// Share Recipient identifier tag.
  final pulumi.Input<String> id;
  /// When the share was modified.
  final pulumi.Input<String> modified;
  final pulumi.Input<List<GetShareRecipientsResultResource>> resources;

  /// Creates a new [GetShareRecipientsResult].
  /// [accountId] Account identifier.
  /// [associationStatus] Share Recipient association status.
  /// [created] When the share was created.
  /// [id] Share Recipient identifier tag.
  /// [modified] When the share was modified.
  /// [resources] Required.
  const GetShareRecipientsResult({
    required this.accountId,
    required this.associationStatus,
    required this.created,
    required this.id,
    required this.modified,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'associationStatus': associationStatus,
      'created': created,
      'id': id,
      'modified': modified,
      'resources': pulumi.Input.mapInputValue<List<GetShareRecipientsResultResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetShareRecipientsResultResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetShareRecipientsResult.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientsResult(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      associationStatus: pulumi.Input.fromValue(map['associationStatus'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetShareRecipientsResultResource>(map['resources']!, (value) => GetShareRecipientsResultResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
