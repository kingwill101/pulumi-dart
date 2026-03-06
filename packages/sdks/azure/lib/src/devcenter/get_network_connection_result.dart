// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkConnection.
class GetNetworkConnectionResult {
  /// The Azure Active Directory Join type.
  final String domainJoinType;
  /// The name of the Azure Active Directory domain.
  final String domainName;
  /// The username of the Azure Active Directory account (user or service account) that has permissions to create computer objects in Active Directory.
  final String domainUsername;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Dev Center Network Connection exists.
  final String location;
  final String name;
  /// The Azure Active Directory domain Organization Unit (OU).
  final String organizationUnit;
  final String resourceGroupName;
  /// The ID of the Subnet that is used to attach Virtual Machines.
  final String subnetId;
  /// A mapping of tags assigned to the Dev Center Network Connection.
  final Map<String, String> tags;

  /// Creates a new [GetNetworkConnectionResult].
  /// [domainJoinType] The Azure Active Directory Join type.
  /// [domainName] The name of the Azure Active Directory domain.
  /// [domainUsername] The username of the Azure Active Directory account (user or service account) that has permissions to create computer objects in Active Directory.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Dev Center Network Connection exists.
  /// [name] Required.
  /// [organizationUnit] The Azure Active Directory domain Organization Unit (OU).
  /// [resourceGroupName] Required.
  /// [subnetId] The ID of the Subnet that is used to attach Virtual Machines.
  /// [tags] A mapping of tags assigned to the Dev Center Network Connection.
  const GetNetworkConnectionResult({
    required this.domainJoinType,
    required this.domainName,
    required this.domainUsername,
    required this.id,
    required this.location,
    required this.name,
    required this.organizationUnit,
    required this.resourceGroupName,
    required this.subnetId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainJoinType': domainJoinType,
      'domainName': domainName,
      'domainUsername': domainUsername,
      'id': id,
      'location': location,
      'name': name,
      'organizationUnit': organizationUnit,
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'tags': tags,
    };
  }

  factory GetNetworkConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkConnectionResult(
      domainJoinType: map['domainJoinType'] as String,
      domainName: map['domainName'] as String,
      domainUsername: map['domainUsername'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      organizationUnit: map['organizationUnit'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

