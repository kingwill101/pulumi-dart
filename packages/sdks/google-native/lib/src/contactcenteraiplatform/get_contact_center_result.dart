// ignore_for_file: unused_element, unnecessary_cast

import 'admin_user_response.dart';
import 'instance_config_response.dart';
import 'samlparams_response.dart';
import 'uris_response.dart';

/// Result data returned by getContactCenter.
class GetContactCenterResult {
  /// Optional. Info about the first admin user, such as given name and family name.
  final AdminUserResponse adminUser;

  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  final bool ccaipManagedUsers;

  /// [Output only] Create time stamp
  final String createTime;

  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  final String customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  final String displayName;

  /// The configuration of this instance, it is currently immutable once created.
  final InstanceConfigResponse instanceConfig;

  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  final String kmsKey;

  /// Labels as key value pairs
  final Map<String, String> labels;

  /// name of resource
  final String name;

  /// Optional. Params that sets up Google as IdP.
  final SAMLParamsResponse samlParams;

  /// The state of this contact center.
  final String state;

  /// [Output only] Update time stamp
  final String updateTime;

  /// URIs to access the deployed ContactCenters.
  final URIsResponse uris;

  /// Optional. Email address of the first admin user.
  final String userEmail;

  /// Creates a new [GetContactCenterResult].
  /// [adminUser] Optional. Info about the first admin user, such as given name and family name.
  /// [ccaipManagedUsers] Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  /// [createTime] [Output only] Create time stamp
  /// [customerDomainPrefix] Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// [displayName] A user friendly name for the ContactCenter.
  /// [instanceConfig] The configuration of this instance, it is currently immutable once created.
  /// [kmsKey] Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  /// [labels] Labels as key value pairs
  /// [name] name of resource
  /// [samlParams] Optional. Params that sets up Google as IdP.
  /// [state] The state of this contact center.
  /// [updateTime] [Output only] Update time stamp
  /// [uris] URIs to access the deployed ContactCenters.
  /// [userEmail] Optional. Email address of the first admin user.
  GetContactCenterResult({
    required this.adminUser,
    required this.ccaipManagedUsers,
    required this.createTime,
    required this.customerDomainPrefix,
    required this.displayName,
    required this.instanceConfig,
    required this.kmsKey,
    required this.labels,
    required this.name,
    required this.samlParams,
    required this.state,
    required this.updateTime,
    required this.uris,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUser': adminUser.toMap(),
      'ccaipManagedUsers': ccaipManagedUsers,
      'createTime': createTime,
      'customerDomainPrefix': customerDomainPrefix,
      'displayName': displayName,
      'instanceConfig': instanceConfig.toMap(),
      'kmsKey': kmsKey,
      'labels': labels,
      'name': name,
      'samlParams': samlParams.toMap(),
      'state': state,
      'updateTime': updateTime,
      'uris': uris.toMap(),
      'userEmail': userEmail,
    };
  }

  factory GetContactCenterResult.fromMap(Map<String, dynamic> map) {
    return GetContactCenterResult(
      adminUser: AdminUserResponse.fromMap(
        (map['adminUser']! as Map).cast<String, dynamic>(),
      ),
      ccaipManagedUsers: map['ccaipManagedUsers'] as bool,
      createTime: map['createTime'] as String,
      customerDomainPrefix: map['customerDomainPrefix'] as String,
      displayName: map['displayName'] as String,
      instanceConfig: InstanceConfigResponse.fromMap(
        (map['instanceConfig']! as Map).cast<String, dynamic>(),
      ),
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      samlParams: SAMLParamsResponse.fromMap(
        (map['samlParams']! as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      uris: URIsResponse.fromMap((map['uris']! as Map).cast<String, dynamic>()),
      userEmail: map['userEmail'] as String,
    );
  }
}
