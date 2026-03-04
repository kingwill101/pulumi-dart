// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_user.dart';
import 'instance_config.dart';
import 'samlparams.dart';

/// {@template pulumi_contactcenteraiplatform_v1alpha1_contact_center_args_doc}
/// The set of arguments for ContactCenter.
/// {@endtemplate}
/// {@macro pulumi_contactcenteraiplatform_v1alpha1_contact_center_args_doc}
class ContactCenterArgs {
  /// Optional. Info about the first admin user, such as given name and family name.
  final pulumi.Input<AdminUser>? adminUser;

  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  final pulumi.Input<bool>? ccaipManagedUsers;

  /// Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  final pulumi.Input<String> contactCenterId;

  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  final pulumi.Input<String> customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  final pulumi.Input<String> displayName;

  /// The configuration of this instance, it is currently immutable once created.
  final pulumi.Input<InstanceConfig>? instanceConfig;

  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  final pulumi.Input<String>? kmsKey;

  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// name of resource
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Params that sets up Google as IdP.
  final pulumi.Input<SAMLParams>? samlParams;

  /// Optional. Email address of the first admin user.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [ContactCenterArgs].
  /// [adminUser] Optional. Info about the first admin user, such as given name and family name.
  /// [ccaipManagedUsers] Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  /// [contactCenterId] Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  /// [customerDomainPrefix] Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// [displayName] A user friendly name for the ContactCenter.
  /// [instanceConfig] The configuration of this instance, it is currently immutable once created.
  /// [kmsKey] Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [name] name of resource
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [samlParams] Optional. Params that sets up Google as IdP.
  /// [userEmail] Optional. Email address of the first admin user.
  ContactCenterArgs({
    this.adminUser,
    this.ccaipManagedUsers,
    required this.contactCenterId,
    required this.customerDomainPrefix,
    required this.displayName,
    this.instanceConfig,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.samlParams,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUser':
          ?pulumi.Input.mapOptionalInputValue<AdminUser, Map<String, dynamic>>(
            adminUser,
            (value) => value.toMap(),
          ),
      'ccaipManagedUsers': ?ccaipManagedUsers,
      'contactCenterId': contactCenterId,
      'customerDomainPrefix': customerDomainPrefix,
      'displayName': displayName,
      'instanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceConfig,
            Map<String, dynamic>
          >(instanceConfig, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'samlParams':
          ?pulumi.Input.mapOptionalInputValue<SAMLParams, Map<String, dynamic>>(
            samlParams,
            (value) => value.toMap(),
          ),
      'userEmail': ?userEmail,
    };
  }

  factory ContactCenterArgs.fromMap(Map<String, dynamic> map) {
    return ContactCenterArgs(
      adminUser: (() {
        final guardedValue = map['adminUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AdminUser.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      ccaipManagedUsers: (() {
        final guardedValue = map['ccaipManagedUsers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      contactCenterId: pulumi.Input.fromValue(map['contactCenterId'] as String),
      customerDomainPrefix: pulumi.Input.fromValue(
        map['customerDomainPrefix'] as String,
      ),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      instanceConfig: (() {
        final guardedValue = map['instanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      samlParams: (() {
        final guardedValue = map['samlParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SAMLParams.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      userEmail: (() {
        final guardedValue = map['userEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
