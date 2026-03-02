// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcmFailback discovered VM details.
class InMageRcmFailbackDiscoveredProtectedVmDetailsResponse {
  /// The SDS created timestamp.
  final pulumi.Input<String> createdTimestamp;
  /// The list of datastores.
  final pulumi.Input<List<String>> datastores;
  /// The list of IP addresses.
  final pulumi.Input<List<String>> ipAddresses;
  /// A value indicating whether the VM is deleted.
  final pulumi.Input<bool> isDeleted;
  /// The last time when SDS information discovered in SRS.
  final pulumi.Input<String> lastDiscoveryTimeInUtc;
  /// The VM's OS name.
  final pulumi.Input<String> osName;
  /// The VM power status.
  final pulumi.Input<String> powerStatus;
  /// The SDS updated timestamp.
  final pulumi.Input<String> updatedTimestamp;
  /// The VCenter fqdn.
  final pulumi.Input<String> vCenterFqdn;
  /// The VCenter Id.
  final pulumi.Input<String> vCenterId;
  /// The VM fqdn.
  final pulumi.Input<String> vmFqdn;
  /// The VMware tools status.
  final pulumi.Input<String> vmwareToolsStatus;

  /// Creates a new [InMageRcmFailbackDiscoveredProtectedVmDetailsResponse].
  /// [createdTimestamp] The SDS created timestamp.
  /// [datastores] The list of datastores.
  /// [ipAddresses] The list of IP addresses.
  /// [isDeleted] A value indicating whether the VM is deleted.
  /// [lastDiscoveryTimeInUtc] The last time when SDS information discovered in SRS.
  /// [osName] The VM's OS name.
  /// [powerStatus] The VM power status.
  /// [updatedTimestamp] The SDS updated timestamp.
  /// [vCenterFqdn] The VCenter fqdn.
  /// [vCenterId] The VCenter Id.
  /// [vmFqdn] The VM fqdn.
  /// [vmwareToolsStatus] The VMware tools status.
  InMageRcmFailbackDiscoveredProtectedVmDetailsResponse({
    required this.createdTimestamp,
    required this.datastores,
    required this.ipAddresses,
    required this.isDeleted,
    required this.lastDiscoveryTimeInUtc,
    required this.osName,
    required this.powerStatus,
    required this.updatedTimestamp,
    required this.vCenterFqdn,
    required this.vCenterId,
    required this.vmFqdn,
    required this.vmwareToolsStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTimestamp': createdTimestamp,
      'datastores': datastores,
      'ipAddresses': ipAddresses,
      'isDeleted': isDeleted,
      'lastDiscoveryTimeInUtc': lastDiscoveryTimeInUtc,
      'osName': osName,
      'powerStatus': powerStatus,
      'updatedTimestamp': updatedTimestamp,
      'vCenterFqdn': vCenterFqdn,
      'vCenterId': vCenterId,
      'vmFqdn': vmFqdn,
      'vmwareToolsStatus': vmwareToolsStatus,
    };
  }

  factory InMageRcmFailbackDiscoveredProtectedVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackDiscoveredProtectedVmDetailsResponse(
      createdTimestamp: (map['createdTimestamp'] as String).input(),
      datastores: ((map['datastores'] as List).cast<String>()).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
      isDeleted: (map['isDeleted'] as bool).input(),
      lastDiscoveryTimeInUtc: (map['lastDiscoveryTimeInUtc'] as String).input(),
      osName: (map['osName'] as String).input(),
      powerStatus: (map['powerStatus'] as String).input(),
      updatedTimestamp: (map['updatedTimestamp'] as String).input(),
      vCenterFqdn: (map['vCenterFqdn'] as String).input(),
      vCenterId: (map['vCenterId'] as String).input(),
      vmFqdn: (map['vmFqdn'] as String).input(),
      vmwareToolsStatus: (map['vmwareToolsStatus'] as String).input(),
    );
  }
}

