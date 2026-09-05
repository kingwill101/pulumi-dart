// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_lxc_namespace_share_ipc.dart';
import 'domain_lxc_namespace_share_net.dart';
import 'domain_lxc_namespace_share_uts.dart';

class DomainLxcNamespace {
  /// Configures sharing of the UTS namespace for the LXC guest instead of creating a private one.
  final pulumi.Input<DomainLxcNamespaceShareIpc?>? shareIpc;
  /// Configures sharing of the UTS namespace for the LXC guest instead of creating a private one.
  final pulumi.Input<DomainLxcNamespaceShareNet?>? shareNet;
  /// Configures sharing of the UTS namespace for the LXC guest instead of creating a private one.
  final pulumi.Input<DomainLxcNamespaceShareUts?>? shareUts;

  /// Creates a new [DomainLxcNamespace].
  /// [shareIpc] Configures sharing of the UTS namespace for the LXC guest instead of creating a private one.
  /// [shareNet] Configures sharing of the UTS namespace for the LXC guest instead of creating a private one.
  /// [shareUts] Configures sharing of the UTS namespace for the LXC guest instead of creating a private one.
  const DomainLxcNamespace({
    this.shareIpc,
    this.shareNet,
    this.shareUts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareIpc': ?pulumi.Input.mapOptionalInputValue<DomainLxcNamespaceShareIpc, Map<String, dynamic>>(shareIpc, (value) => value.toMap()),
      'shareNet': ?pulumi.Input.mapOptionalInputValue<DomainLxcNamespaceShareNet, Map<String, dynamic>>(shareNet, (value) => value.toMap()),
      'shareUts': ?pulumi.Input.mapOptionalInputValue<DomainLxcNamespaceShareUts, Map<String, dynamic>>(shareUts, (value) => value.toMap()),
    };
  }

  factory DomainLxcNamespace.fromMap(Map<String, dynamic> map) {
    return DomainLxcNamespace(
      shareIpc: (() { final guardedValue = map['shareIpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLxcNamespaceShareIpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shareNet: (() { final guardedValue = map['shareNet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLxcNamespaceShareNet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shareUts: (() { final guardedValue = map['shareUts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLxcNamespaceShareUts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
