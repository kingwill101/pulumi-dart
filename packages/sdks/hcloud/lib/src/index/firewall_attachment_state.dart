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
    this.firewallId,
    this.labelSelectors,
    this.serverIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallId': ?firewallId,
      'labelSelectors': ?labelSelectors,
      'serverIds': ?serverIds,
    };
  }

  factory FirewallAttachmentState.fromMap(Map<String, dynamic> map) {
    return FirewallAttachmentState(
      firewallId: map['firewallId'] == null ? null : (map['firewallId']! as int).input(),
      labelSelectors: map['labelSelectors'] == null ? null : ((map['labelSelectors']! as List).cast<String>()).input(),
      serverIds: map['serverIds'] == null ? null : ((map['serverIds']! as List).cast<int>()).input(),
    );
  }
}

