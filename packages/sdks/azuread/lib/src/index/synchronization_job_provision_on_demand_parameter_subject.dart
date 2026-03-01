// ignore_for_file: unused_element, unnecessary_cast


class SynchronizationJobProvisionOnDemandParameterSubject {
  /// The identifier of an object to which a synchronization job is to be applied. Can be one of the following: (1) An onPremisesDistinguishedName for synchronization from Active Directory to Azure AD. (2) The user ID for synchronization from Azure AD to a third-party. (3) The Worker ID of the Workday worker for synchronization from Workday to either Active Directory or Azure AD.
  final String objectId;
  /// The type of the object to which a synchronization job is to be applied. Can be one of the following: `user` for synchronizing between Active Directory and Azure AD, `User` for synchronizing a user between Azure AD and a third-party application, `Worker` for synchronization a user between Workday and either Active Directory or Azure AD, `Group` for synchronizing a group between Azure AD and a third-party application.
  final String objectTypeName;

  /// Creates a new [SynchronizationJobProvisionOnDemandParameterSubject].
  /// [objectId] The identifier of an object to which a synchronization job is to be applied. Can be one of the following: (1) An onPremisesDistinguishedName for synchronization from Active Directory to Azure AD. (2) The user ID for synchronization from Azure AD to a third-party. (3) The Worker ID of the Workday worker for synchronization from Workday to either Active Directory or Azure AD.
  /// [objectTypeName] The type of the object to which a synchronization job is to be applied. Can be one of the following: `user` for synchronizing between Active Directory and Azure AD, `User` for synchronizing a user between Azure AD and a third-party application, `Worker` for synchronization a user between Workday and either Active Directory or Azure AD, `Group` for synchronizing a group between Azure AD and a third-party application.
  SynchronizationJobProvisionOnDemandParameterSubject({
    required this.objectId,
    required this.objectTypeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'objectTypeName': objectTypeName,
    };
  }

  factory SynchronizationJobProvisionOnDemandParameterSubject.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobProvisionOnDemandParameterSubject(
      objectId: map['objectId'] as String,
      objectTypeName: map['objectTypeName'] as String,
    );
  }
}

