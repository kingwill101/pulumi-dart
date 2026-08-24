// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustTunnelCloudflaredVirtualNetwork resources.
class ZeroTrustTunnelCloudflaredVirtualNetworkState {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// Optional remark describing the virtual network.
  final pulumi.Input<String?>? comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String?>? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String?>? deletedAt;
  /// If `true`, this virtual network is the default for the account.
  final pulumi.Input<bool?>? isDefault;
  /// If `true`, this virtual network is the default for the account.
  final pulumi.Input<bool?>? isDefaultNetwork;
  /// A user-friendly name for the virtual network.
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustTunnelCloudflaredVirtualNetworkState].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the virtual network.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [isDefault] If `true`, this virtual network is the default for the account.
  /// [isDefaultNetwork] If `true`, this virtual network is the default for the account.
  /// [name] A user-friendly name for the virtual network.
  const ZeroTrustTunnelCloudflaredVirtualNetworkState({
    this.accountId,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.isDefault,
    this.isDefaultNetwork,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'isDefault': ?isDefault,
      'isDefaultNetwork': ?isDefaultNetwork,
      'name': ?name,
    };
  }

  factory ZeroTrustTunnelCloudflaredVirtualNetworkState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelCloudflaredVirtualNetworkState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
