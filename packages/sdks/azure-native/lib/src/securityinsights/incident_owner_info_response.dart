// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information on the user an incident is assigned to
class IncidentOwnerInfoResponse {
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

  /// Creates a new [IncidentOwnerInfoResponse].
  /// [assignedTo] The name of the user the incident is assigned to.
  /// [email] The email of the user the incident is assigned to.
  /// [objectId] The object id of the user the incident is assigned to.
  /// [ownerType] The type of the owner the incident is assigned to.
  /// [userPrincipalName] The user principal name of the user the incident is assigned to.
  IncidentOwnerInfoResponse({
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

  factory IncidentOwnerInfoResponse.fromMap(Map<String, dynamic> map) {
    return IncidentOwnerInfoResponse(
      assignedTo: map['assignedTo'] == null ? null : (map['assignedTo']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      ownerType: map['ownerType'] == null ? null : (map['ownerType']! as String).input(),
      userPrincipalName: map['userPrincipalName'] == null ? null : (map['userPrincipalName']! as String).input(),
    );
  }
}

