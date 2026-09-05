// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkConnection.
class GetNetworkConnectionResult {
  /// The Azure Active Directory Join type.
  final String? domainJoinType;
  /// The name of the Azure Active Directory domain.
  final String? domainName;
  /// The username of the Azure Active Directory account (user or service account) that has permissions to create computer objects in Active Directory.
  final String? domainUsername;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Dev Center Network Connection exists.
  final String? location;
  final String? name;
  /// The Azure Active Directory domain Organization Unit (OU).
  final String? organizationUnit;
  final String? resourceGroupName;
  /// The ID of the Subnet that is used to attach Virtual Machines.
  final String? subnetId;
  /// A mapping of tags assigned to the Dev Center Network Connection.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkConnectionResult].
  /// [domainJoinType] The Azure Active Directory Join type.
  /// [domainName] The name of the Azure Active Directory domain.
  /// [domainUsername] The username of the Azure Active Directory account (user or service account) that has permissions to create computer objects in Active Directory.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Dev Center Network Connection exists.
  /// [name] Optional.
  /// [organizationUnit] The Azure Active Directory domain Organization Unit (OU).
  /// [resourceGroupName] Optional.
  /// [subnetId] The ID of the Subnet that is used to attach Virtual Machines.
  /// [tags] A mapping of tags assigned to the Dev Center Network Connection.
  const GetNetworkConnectionResult({
    this.domainJoinType,
    this.domainName,
    this.domainUsername,
    this.id,
    this.location,
    this.name,
    this.organizationUnit,
    this.resourceGroupName,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainJoinType': ?domainJoinType,
      'domainName': ?domainName,
      'domainUsername': ?domainUsername,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'organizationUnit': ?organizationUnit,
      'resourceGroupName': ?resourceGroupName,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory GetNetworkConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkConnectionResult(
      domainJoinType: (() { final guardedValue = map['domainJoinType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainUsername: (() { final guardedValue = map['domainUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationUnit: (() { final guardedValue = map['organizationUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
