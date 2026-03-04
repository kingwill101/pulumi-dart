// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'key_set_user.dart';

/// {@template pulumi_networkcloud_bmc_key_set_args_doc}
/// The set of arguments for BmcKeySet.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_bmc_key_set_args_doc}
class BmcKeySetArgs {
  /// The object ID of Azure Active Directory group that all users in the list must be in for access to be granted. Users that are not in the group will not have access.
  final pulumi.Input<String> azureGroupId;

  /// The name of the baseboard management controller key set.
  final pulumi.Input<String>? bmcKeySetName;

  /// The name of the cluster.
  final pulumi.Input<String> clusterName;

  /// The date and time after which the users in this key set will be removed from the baseboard management controllers.
  final pulumi.Input<String> expiration;

  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The access level allowed for the users in this key set.
  final pulumi.Input<String> privilegeLevel;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The unique list of permitted users.
  final pulumi.Input<List<KeySetUser>> userList;

  /// Creates a new [BmcKeySetArgs].
  /// [azureGroupId] The object ID of Azure Active Directory group that all users in the list must be in for access to be granted. Users that are not in the group will not have access.
  /// [bmcKeySetName] The name of the baseboard management controller key set.
  /// [clusterName] The name of the cluster.
  /// [expiration] The date and time after which the users in this key set will be removed from the baseboard management controllers.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [privilegeLevel] The access level allowed for the users in this key set.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [userList] The unique list of permitted users.
  BmcKeySetArgs({
    required this.azureGroupId,
    this.bmcKeySetName,
    required this.clusterName,
    required this.expiration,
    required this.extendedLocation,
    this.location,
    required this.privilegeLevel,
    required this.resourceGroupName,
    this.tags,
    required this.userList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureGroupId': azureGroupId,
      'bmcKeySetName': ?bmcKeySetName,
      'clusterName': clusterName,
      'expiration': expiration,
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'privilegeLevel': privilegeLevel,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userList':
          pulumi.Input.mapInputValue<
            List<KeySetUser>,
            List<Map<String, dynamic>>
          >(
            userList,
            (value) =>
                pulumi.Input.encodeList<KeySetUser, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory BmcKeySetArgs.fromMap(Map<String, dynamic> map) {
    return BmcKeySetArgs(
      azureGroupId: pulumi.Input.fromValue(map['azureGroupId'] as String),
      bmcKeySetName: (() {
        final guardedValue = map['bmcKeySetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      expiration: pulumi.Input.fromValue(map['expiration'] as String),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privilegeLevel: pulumi.Input.fromValue(map['privilegeLevel'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userList: pulumi.Input.fromValue(
        pulumi.Input.decodeList<KeySetUser>(
          map['userList']!,
          (value) => KeySetUser.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
