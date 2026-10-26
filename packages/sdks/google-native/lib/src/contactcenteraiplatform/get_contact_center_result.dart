// ignore_for_file: unused_element, unnecessary_cast

import 'admin_user_response.dart';
import 'instance_config_response.dart';
import 'samlparams_response.dart';
import 'uris_response.dart';

/// Result data returned by getContactCenter.
class GetContactCenterResult {
  /// Optional. Info about the first admin user, such as given name and family name.
  final AdminUserResponse? adminUser;
  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  final bool? ccaipManagedUsers;
  /// [Output only] Create time stamp
  final String? createTime;
  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  final String? customerDomainPrefix;
  /// A user friendly name for the ContactCenter.
  final String? displayName;
  /// The configuration of this instance, it is currently immutable once created.
  final InstanceConfigResponse? instanceConfig;
  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  final String? kmsKey;
  /// Labels as key value pairs
  final Map<String, String>? labels;
  /// name of resource
  final String? name;
  /// Optional. Params that sets up Google as IdP.
  final SAMLParamsResponse? samlParams;
  /// The state of this contact center.
  final String? state;
  /// [Output only] Update time stamp
  final String? updateTime;
  /// URIs to access the deployed ContactCenters.
  final URIsResponse? uris;
  /// Optional. Email address of the first admin user.
  final String? userEmail;

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
  const GetContactCenterResult({
    this.adminUser,
    this.ccaipManagedUsers,
    this.createTime,
    this.customerDomainPrefix,
    this.displayName,
    this.instanceConfig,
    this.kmsKey,
    this.labels,
    this.name,
    this.samlParams,
    this.state,
    this.updateTime,
    this.uris,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUser': ?adminUser?.toMap(),
      'ccaipManagedUsers': ?ccaipManagedUsers,
      'createTime': ?createTime,
      'customerDomainPrefix': ?customerDomainPrefix,
      'displayName': ?displayName,
      'instanceConfig': ?instanceConfig?.toMap(),
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'name': ?name,
      'samlParams': ?samlParams?.toMap(),
      'state': ?state,
      'updateTime': ?updateTime,
      'uris': ?uris?.toMap(),
      'userEmail': ?userEmail,
    };
  }

  factory GetContactCenterResult.fromMap(Map<String, dynamic> map) {
    return GetContactCenterResult(
      adminUser: (() { final guardedValue = map['adminUser']; if (guardedValue == null) return null; return AdminUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ccaipManagedUsers: (() { final guardedValue = map['ccaipManagedUsers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerDomainPrefix: (() { final guardedValue = map['customerDomainPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceConfig: (() { final guardedValue = map['instanceConfig']; if (guardedValue == null) return null; return InstanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samlParams: (() { final guardedValue = map['samlParams']; if (guardedValue == null) return null; return SAMLParamsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return URIsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
