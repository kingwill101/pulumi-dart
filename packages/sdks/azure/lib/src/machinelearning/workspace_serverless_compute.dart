// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceServerlessCompute {
  /// Should serverless compute nodes deployed in a custom Virtual Network have public IP addresses enabled for a workspace with private endpoint? Defaults to `false`.
  ///
  /// &gt; **Note:** `publicIpEnabled` cannot be updated from `true` to `false` when `subnetId` is not set. `publicIpEnabled` must be set to `true` if `subnetId` is not set and when `publicNetworkAccessEnabled` is `false`.
  final pulumi.Input<bool>? publicIpEnabled;
  /// The ID of an existing Virtual Network Subnet in which the serverless compute nodes should be deployed to.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [WorkspaceServerlessCompute].
  /// [publicIpEnabled] Should serverless compute nodes deployed in a custom Virtual Network have public IP addresses enabled for a workspace with private endpoint? Defaults to `false`.
  /// [subnetId] The ID of an existing Virtual Network Subnet in which the serverless compute nodes should be deployed to.
  const WorkspaceServerlessCompute({
    this.publicIpEnabled,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIpEnabled': ?publicIpEnabled,
      'subnetId': ?subnetId,
    };
  }

  factory WorkspaceServerlessCompute.fromMap(Map<String, dynamic> map) {
    return WorkspaceServerlessCompute(
      publicIpEnabled: (() { final guardedValue = map['publicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
