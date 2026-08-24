// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_recipient.dart';
import 'share_resource.dart';

/// {@template pulumi_index_share_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_index_share_share_args_doc}
class ShareArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// The name of the share.
  final pulumi.Input<String> name;
  final pulumi.Input<List<ShareRecipient>> recipients;
  final pulumi.Input<List<ShareResource>> resources;

  /// Creates a new [ShareArgs].
  /// [accountId] Account identifier.
  /// [name] The name of the share.
  /// [recipients] Required.
  /// [resources] Required.
  const ShareArgs({
    required this.accountId,
    required this.name,
    required this.recipients,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'recipients': pulumi.Input.mapInputValue<List<ShareRecipient>, List<Map<String, dynamic>>>(recipients, (value) => pulumi.Input.encodeList<ShareRecipient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': pulumi.Input.mapInputValue<List<ShareResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ShareResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      recipients: pulumi.Input.fromValue(pulumi.Input.decodeList<ShareRecipient>(map['recipients']!, (value) => ShareRecipient.fromMap((value as Map).cast<String, dynamic>()))),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<ShareResource>(map['resources']!, (value) => ShareResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
