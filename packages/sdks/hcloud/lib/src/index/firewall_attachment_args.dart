// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_firewall_attachment_firewall_attachment_args_doc}
/// The set of arguments for FirewallAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_attachment_firewall_attachment_args_doc}
class FirewallAttachmentArgs {
  /// ID of the firewall the resources
  /// should be attached to.
  final pulumi.Input<int> firewallId;
  /// List of label selectors used to
  /// select resources to attach to the firewall.
  final pulumi.Input<List<String>>? labelSelectors;
  /// List of Server IDs to attach to the
  /// firewall.
  final pulumi.Input<List<int>>? serverIds;

  /// Creates a new [FirewallAttachmentArgs].
  /// [firewallId] ID of the firewall the resources
  /// [labelSelectors] List of label selectors used to
  /// [serverIds] List of Server IDs to attach to the
  FirewallAttachmentArgs({
    required this.firewallId,
    this.labelSelectors,
    this.serverIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallId': firewallId,
      'labelSelectors': ?labelSelectors,
      'serverIds': ?serverIds,
    };
  }

  factory FirewallAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return FirewallAttachmentArgs(
      firewallId: (map['firewallId'] as int).input(),
      labelSelectors: map['labelSelectors'] == null ? null : ((map['labelSelectors']! as List).cast<String>()).input(),
      serverIds: map['serverIds'] == null ? null : ((map['serverIds']! as List).cast<int>()).input(),
    );
  }
}

