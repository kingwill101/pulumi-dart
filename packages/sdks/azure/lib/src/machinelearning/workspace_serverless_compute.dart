// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceServerlessCompute {
  /// Should serverless compute nodes deployed in a custom Virtual Network have public IP addresses enabled for a workspace with private endpoint? Defaults to `false`.
  ///
  /// > **Note:** `public_ip_enabled` cannot be updated from `true` to `false` when `subnet_id` is not set. `public_ip_enabled` must be set to `true` if `subnet_id` is not set and when `public_network_access_enabled` is `false`.
  final bool? publicIpEnabled;
  /// The ID of an existing Virtual Network Subnet in which the serverless compute nodes should be deployed to.
  final String? subnetId;

  /// Creates a new [WorkspaceServerlessCompute].
  /// [publicIpEnabled] Should serverless compute nodes deployed in a custom Virtual Network have public IP addresses enabled for a workspace with private endpoint? Defaults to `false`.
  /// [subnetId] The ID of an existing Virtual Network Subnet in which the serverless compute nodes should be deployed to.
  WorkspaceServerlessCompute({
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
      publicIpEnabled: map['publicIpEnabled'] == null ? null : map['publicIpEnabled'] as bool,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

