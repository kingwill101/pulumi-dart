// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcmFailback discovered VM details.
class InMageRcmFailbackDiscoveredProtectedVmDetailsResponse {
  /// The SDS created timestamp.
  final String createdTimestamp;
  /// The list of datastores.
  final List<String> datastores;
  /// The list of IP addresses.
  final List<String> ipAddresses;
  /// A value indicating whether the VM is deleted.
  final bool isDeleted;
  /// The last time when SDS information discovered in SRS.
  final String lastDiscoveryTimeInUtc;
  /// The VM's OS name.
  final String osName;
  /// The VM power status.
  final String powerStatus;
  /// The SDS updated timestamp.
  final String updatedTimestamp;
  /// The VCenter fqdn.
  final String vCenterFqdn;
  /// The VCenter Id.
  final String vCenterId;
  /// The VM fqdn.
  final String vmFqdn;
  /// The VMware tools status.
  final String vmwareToolsStatus;

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
      createdTimestamp: map['createdTimestamp'] as String,
      datastores: (map['datastores'] as List).cast<String>(),
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      isDeleted: map['isDeleted'] as bool,
      lastDiscoveryTimeInUtc: map['lastDiscoveryTimeInUtc'] as String,
      osName: map['osName'] as String,
      powerStatus: map['powerStatus'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
      vCenterFqdn: map['vCenterFqdn'] as String,
      vCenterId: map['vCenterId'] as String,
      vmFqdn: map['vmFqdn'] as String,
      vmwareToolsStatus: map['vmwareToolsStatus'] as String,
    );
  }
}

