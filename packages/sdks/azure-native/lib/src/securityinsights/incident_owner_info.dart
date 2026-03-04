// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information on the user an incident is assigned to
class IncidentOwnerInfo {
  /// The name of the user the incident is assigned to.
  final pulumi.Input<String>? assignedTo;

  /// The email of the user the incident is assigned to.
  final pulumi.Input<String>? email;

  /// The object id of the user the incident is assigned to.
  final pulumi.Input<String>? objectId;

  /// The type of the owner the incident is assigned to.
  final pulumi.Input<String>? ownerType;

  /// The user principal name of the user the incident is assigned to.
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [IncidentOwnerInfo].
  /// [assignedTo] The name of the user the incident is assigned to.
  /// [email] The email of the user the incident is assigned to.
  /// [objectId] The object id of the user the incident is assigned to.
  /// [ownerType] The type of the owner the incident is assigned to.
  /// [userPrincipalName] The user principal name of the user the incident is assigned to.
  IncidentOwnerInfo({
    this.assignedTo,
    this.email,
    this.objectId,
    this.ownerType,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedTo': ?assignedTo,
      'email': ?email,
      'objectId': ?objectId,
      'ownerType': ?ownerType,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory IncidentOwnerInfo.fromMap(Map<String, dynamic> map) {
    return IncidentOwnerInfo(
      assignedTo: (() {
        final guardedValue = map['assignedTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectId: (() {
        final guardedValue = map['objectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerType: (() {
        final guardedValue = map['ownerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPrincipalName: (() {
        final guardedValue = map['userPrincipalName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
