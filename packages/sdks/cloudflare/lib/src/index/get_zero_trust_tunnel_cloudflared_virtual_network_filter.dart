// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredVirtualNetworkFilter {
  /// UUID of the virtual network.
  final pulumi.Input<String?>? id;
  /// If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  final pulumi.Input<bool?>? isDefault;
  /// If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  final pulumi.Input<bool?>? isDefaultNetwork;
  /// If `true`, only include deleted virtual networks. If `false`, exclude deleted virtual networks. If empty, all virtual networks will be included.
  final pulumi.Input<bool?>? isDeleted;
  /// A user-friendly name for the virtual network.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetZeroTrustTunnelCloudflaredVirtualNetworkFilter].
  /// [id] UUID of the virtual network.
  /// [isDefault] If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  /// [isDefaultNetwork] If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  /// [isDeleted] If `true`, only include deleted virtual networks. If `false`, exclude deleted virtual networks. If empty, all virtual networks will be included.
  /// [name] A user-friendly name for the virtual network.
  const GetZeroTrustTunnelCloudflaredVirtualNetworkFilter({
    this.id,
    this.isDefault,
    this.isDefaultNetwork,
    this.isDeleted,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isDefault': ?isDefault,
      'isDefaultNetwork': ?isDefaultNetwork,
      'isDeleted': ?isDeleted,
      'name': ?name,
    };
  }

  factory GetZeroTrustTunnelCloudflaredVirtualNetworkFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredVirtualNetworkFilter(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
