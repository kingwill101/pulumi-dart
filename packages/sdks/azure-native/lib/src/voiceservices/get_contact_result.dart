// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getContact.
class GetContactResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Full name of contact
  final String contactName;
  /// Email address of contact
  final String email;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Telephone number of contact
  final String phoneNumber;
  /// Resource provisioning state.
  final String provisioningState;
  /// Job title of contact
  final String role;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetContactResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contactName] Full name of contact
  /// [email] Email address of contact
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [phoneNumber] Telephone number of contact
  /// [provisioningState] Resource provisioning state.
  /// [role] Job title of contact
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetContactResult({
    required this.azureApiVersion,
    required this.contactName,
    required this.email,
    required this.id,
    required this.location,
    required this.name,
    required this.phoneNumber,
    required this.provisioningState,
    required this.role,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contactName': contactName,
      'email': email,
      'id': id,
      'location': location,
      'name': name,
      'phoneNumber': phoneNumber,
      'provisioningState': provisioningState,
      'role': role,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetContactResult.fromMap(Map<String, dynamic> map) {
    return GetContactResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contactName: map['contactName'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      provisioningState: map['provisioningState'] as String,
      role: map['role'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

