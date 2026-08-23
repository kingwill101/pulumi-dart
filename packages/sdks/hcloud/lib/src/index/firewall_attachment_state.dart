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
  const FirewallAttachmentState({
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
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      labelSelectors: (() { final guardedValue = map['labelSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverIds: (() { final guardedValue = map['serverIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
