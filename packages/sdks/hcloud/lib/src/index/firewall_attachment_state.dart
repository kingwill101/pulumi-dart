// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallAttachment resources.
class FirewallAttachmentState {
  /// ID of the firewall the resources
  /// should be attached to.
  final pulumi.Input<int>? firewallId;
  /// List of label selectors used to
  /// select resources to attach to the firewall.
  final pulumi.Input<List<String>>? labelSelectors;
  /// List of Server IDs to attach to the
  /// firewall.
  final pulumi.Input<List<int>>? serverIds;

  /// Creates a new [FirewallAttachmentState].
  /// [firewallId] ID of the firewall the resources
  /// [labelSelectors] List of label selectors used to
  /// [serverIds] List of Server IDs to attach to the
  FirewallAttachmentState({
    pulumi.Output<int>? firewallId,
    pulumi.Output<List<String>>? labelSelectors,
    pulumi.Output<List<int>>? serverIds,
  }) :
      firewallId = pulumi.Input.asOptionalInput<int>(firewallId),
      labelSelectors = pulumi.Input.asOptionalInput<List<String>>(labelSelectors),
      serverIds = pulumi.Input.asOptionalInput<List<int>>(serverIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallId': ?firewallId,
      'labelSelectors': ?labelSelectors,
      'serverIds': ?serverIds,
    };
  }

  factory FirewallAttachmentState.fromMap(Map<String, dynamic> map) {
    return FirewallAttachmentState(
      firewallId: map['firewallId'] == null ? null : pulumi.Output.create<int>(map['firewallId'] as int),
      labelSelectors: map['labelSelectors'] == null ? null : pulumi.Output.create<List<String>>((map['labelSelectors'] as List).cast<String>()),
      serverIds: map['serverIds'] == null ? null : pulumi.Output.create<List<int>>((map['serverIds'] as List).cast<int>()),
    );
  }
}

