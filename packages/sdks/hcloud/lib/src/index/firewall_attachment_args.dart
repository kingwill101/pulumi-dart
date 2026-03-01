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
    required pulumi.Output<int> firewallId,
    pulumi.Output<List<String>>? labelSelectors,
    pulumi.Output<List<int>>? serverIds,
  }) :
      firewallId = pulumi.Input.asInput<int>(firewallId),
      labelSelectors = pulumi.Input.asOptionalInput<List<String>>(labelSelectors),
      serverIds = pulumi.Input.asOptionalInput<List<int>>(serverIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallId': firewallId,
      'labelSelectors': ?labelSelectors,
      'serverIds': ?serverIds,
    };
  }

  factory FirewallAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return FirewallAttachmentArgs(
      firewallId: pulumi.Output.create<int>(map['firewallId'] as int),
      labelSelectors: map['labelSelectors'] == null ? null : pulumi.Output.create<List<String>>((map['labelSelectors'] as List).cast<String>()),
      serverIds: map['serverIds'] == null ? null : pulumi.Output.create<List<int>>((map['serverIds'] as List).cast<int>()),
    );
  }
}

