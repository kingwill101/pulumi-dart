// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user_database_grant.dart';
import 'get_users_user_domain_grant.dart';
import 'get_users_user_firewall_grant.dart';
import 'get_users_user_global_grant.dart';
import 'get_users_user_image_grant.dart';
import 'get_users_user_linode_grant.dart';
import 'get_users_user_longview_grant.dart';
import 'get_users_user_nodebalancer_grant.dart';
import 'get_users_user_stackscript_grant.dart';
import 'get_users_user_volume_grant.dart';
import 'get_users_user_vpc_grant.dart';

class GetUsersUser {
  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserDatabaseGrant>> databaseGrants;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserDomainGrant>> domainGrants;

  /// The email address for this User, for account management communications, and may be used for other communications as configured.
  final pulumi.Input<String> email;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserFirewallGrant>> firewallGrants;

  /// A structure containing the Account-level grants a User has.
  final pulumi.Input<List<GetUsersUserGlobalGrant>> globalGrants;

  /// The ID of entity this grant applies to.
  final pulumi.Input<String> id;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserImageGrant>> imageGrants;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserLinodeGrant>> linodeGrants;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserLongviewGrant>> longviewGrants;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserNodebalancerGrant>> nodebalancerGrants;

  /// The date and time when this User’s current password was created. User passwords are first created during the Account sign-up process, and updated using the Reset Password webpage. null if this User has not created a password yet.
  final pulumi.Input<String> passwordCreated;

  /// If true, this User must be granted access to perform actions or access entities on this Account.
  final pulumi.Input<bool> restricted;

  /// A list of SSH Key labels added by this User. These are the keys that will be deployed if this User is included in the authorized_users field of a create Linode, rebuild Linode, or create Disk request.
  final pulumi.Input<List<String>> sshKeys;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserStackscriptGrant>> stackscriptGrants;

  /// A boolean value indicating if the User has Two Factor Authentication (TFA) enabled.
  final pulumi.Input<bool> tfaEnabled;

  /// The type of this user.
  final pulumi.Input<String> userType;

  /// This User's username. This is used for logging in, and may also be displayed alongside actions the User performs (for example, in Events or public StackScripts).
  final pulumi.Input<String> username;

  /// The phone number verified for this User Profile with the Phone Number Verify command. null if this User Profile has no verified phone number.
  final pulumi.Input<String> verifiedPhoneNumber;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserVolumeGrant>> volumeGrants;

  /// A set containing all of the user's active grants.
  final pulumi.Input<List<GetUsersUserVpcGrant>> vpcGrants;

  /// Creates a new [GetUsersUser].
  /// [databaseGrants] A set containing all of the user's active grants.
  /// [domainGrants] A set containing all of the user's active grants.
  /// [email] The email address for this User, for account management communications, and may be used for other communications as configured.
  /// [firewallGrants] A set containing all of the user's active grants.
  /// [globalGrants] A structure containing the Account-level grants a User has.
  /// [id] The ID of entity this grant applies to.
  /// [imageGrants] A set containing all of the user's active grants.
  /// [linodeGrants] A set containing all of the user's active grants.
  /// [longviewGrants] A set containing all of the user's active grants.
  /// [nodebalancerGrants] A set containing all of the user's active grants.
  /// [passwordCreated] The date and time when this User’s current password was created. User passwords are first created during the Account sign-up process, and updated using the Reset Password webpage. null if this User has not created a password yet.
  /// [restricted] If true, this User must be granted access to perform actions or access entities on this Account.
  /// [sshKeys] A list of SSH Key labels added by this User. These are the keys that will be deployed if this User is included in the authorized_users field of a create Linode, rebuild Linode, or create Disk request.
  /// [stackscriptGrants] A set containing all of the user's active grants.
  /// [tfaEnabled] A boolean value indicating if the User has Two Factor Authentication (TFA) enabled.
  /// [userType] The type of this user.
  /// [username] This User's username. This is used for logging in, and may also be displayed alongside actions the User performs (for example, in Events or public StackScripts).
  /// [verifiedPhoneNumber] The phone number verified for this User Profile with the Phone Number Verify command. null if this User Profile has no verified phone number.
  /// [volumeGrants] A set containing all of the user's active grants.
  /// [vpcGrants] A set containing all of the user's active grants.
  GetUsersUser({
    required this.databaseGrants,
    required this.domainGrants,
    required this.email,
    required this.firewallGrants,
    required this.globalGrants,
    required this.id,
    required this.imageGrants,
    required this.linodeGrants,
    required this.longviewGrants,
    required this.nodebalancerGrants,
    required this.passwordCreated,
    required this.restricted,
    required this.sshKeys,
    required this.stackscriptGrants,
    required this.tfaEnabled,
    required this.userType,
    required this.username,
    required this.verifiedPhoneNumber,
    required this.volumeGrants,
    required this.vpcGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserDatabaseGrant>,
            List<Map<String, dynamic>>
          >(
            databaseGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserDatabaseGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'domainGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserDomainGrant>,
            List<Map<String, dynamic>>
          >(
            domainGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserDomainGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'email': email,
      'firewallGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserFirewallGrant>,
            List<Map<String, dynamic>>
          >(
            firewallGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserFirewallGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'globalGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserGlobalGrant>,
            List<Map<String, dynamic>>
          >(
            globalGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserGlobalGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'imageGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserImageGrant>,
            List<Map<String, dynamic>>
          >(
            imageGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserImageGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'linodeGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserLinodeGrant>,
            List<Map<String, dynamic>>
          >(
            linodeGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserLinodeGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'longviewGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserLongviewGrant>,
            List<Map<String, dynamic>>
          >(
            longviewGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserLongviewGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodebalancerGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserNodebalancerGrant>,
            List<Map<String, dynamic>>
          >(
            nodebalancerGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserNodebalancerGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'passwordCreated': passwordCreated,
      'restricted': restricted,
      'sshKeys': sshKeys,
      'stackscriptGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserStackscriptGrant>,
            List<Map<String, dynamic>>
          >(
            stackscriptGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserStackscriptGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tfaEnabled': tfaEnabled,
      'userType': userType,
      'username': username,
      'verifiedPhoneNumber': verifiedPhoneNumber,
      'volumeGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserVolumeGrant>,
            List<Map<String, dynamic>>
          >(
            volumeGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserVolumeGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcGrants':
          pulumi.Input.mapInputValue<
            List<GetUsersUserVpcGrant>,
            List<Map<String, dynamic>>
          >(
            vpcGrants,
            (value) =>
                pulumi.Input.encodeList<
                  GetUsersUserVpcGrant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      databaseGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserDatabaseGrant>(
          map['databaseGrants']!,
          (value) => GetUsersUserDatabaseGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      domainGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserDomainGrant>(
          map['domainGrants']!,
          (value) => GetUsersUserDomainGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      email: pulumi.Input.fromValue(map['email'] as String),
      firewallGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserFirewallGrant>(
          map['firewallGrants']!,
          (value) => GetUsersUserFirewallGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      globalGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserGlobalGrant>(
          map['globalGrants']!,
          (value) => GetUsersUserGlobalGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserImageGrant>(
          map['imageGrants']!,
          (value) => GetUsersUserImageGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      linodeGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserLinodeGrant>(
          map['linodeGrants']!,
          (value) => GetUsersUserLinodeGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      longviewGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserLongviewGrant>(
          map['longviewGrants']!,
          (value) => GetUsersUserLongviewGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      nodebalancerGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserNodebalancerGrant>(
          map['nodebalancerGrants']!,
          (value) => GetUsersUserNodebalancerGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      passwordCreated: pulumi.Input.fromValue(map['passwordCreated'] as String),
      restricted: pulumi.Input.fromValue(map['restricted'] as bool),
      sshKeys: pulumi.Input.fromValue((map['sshKeys'] as List).cast<String>()),
      stackscriptGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserStackscriptGrant>(
          map['stackscriptGrants']!,
          (value) => GetUsersUserStackscriptGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tfaEnabled: pulumi.Input.fromValue(map['tfaEnabled'] as bool),
      userType: pulumi.Input.fromValue(map['userType'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
      verifiedPhoneNumber: pulumi.Input.fromValue(
        map['verifiedPhoneNumber'] as String,
      ),
      volumeGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserVolumeGrant>(
          map['volumeGrants']!,
          (value) => GetUsersUserVolumeGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      vpcGrants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetUsersUserVpcGrant>(
          map['vpcGrants']!,
          (value) => GetUsersUserVpcGrant.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
