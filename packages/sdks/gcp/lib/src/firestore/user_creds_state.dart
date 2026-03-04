// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_creds_resource_identity.dart';

/// Input properties used for looking up and filtering UserCreds resources.
class UserCredsState {
  /// The timestamp at which these user creds were created.
  final pulumi.Input<String>? createTime;

  /// The Firestore database ID.
  final pulumi.Input<String>? database;

  /// The ID to use for the user creds, which will become the final component
  /// of the user cred's resource name.
  /// This value should be 4-63 characters. Valid characters are /[a-z][0-9]-/
  /// with first character a letter and the last a letter or a number. Must not
  /// be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Describes the Resource Identity principal.
  /// Structure is documented below.
  final pulumi.Input<List<UserCredsResourceIdentity>>? resourceIdentities;

  /// The plaintext server-generated password for the user creds.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? securePassword;

  /// The state of the user creds.
  final pulumi.Input<String>? state;

  /// The timestamp at which these user creds were updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [UserCredsState].
  /// [createTime] The timestamp at which these user creds were created.
  /// [database] The Firestore database ID.
  /// [name] The ID to use for the user creds, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceIdentities] Describes the Resource Identity principal.
  /// [securePassword] The plaintext server-generated password for the user creds.
  /// [state] The state of the user creds.
  /// [updateTime] The timestamp at which these user creds were updated.
  UserCredsState({
    this.createTime,
    this.database,
    this.name,
    this.project,
    this.resourceIdentities,
    this.securePassword,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'database': ?database,
      'name': ?name,
      'project': ?project,
      'resourceIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserCredsResourceIdentity>,
            List<Map<String, dynamic>>
          >(
            resourceIdentities,
            (value) =>
                pulumi.Input.encodeList<
                  UserCredsResourceIdentity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securePassword': ?securePassword,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory UserCredsState.fromMap(Map<String, dynamic> map) {
    return UserCredsState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      database: (() {
        final guardedValue = map['database'];
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
      resourceIdentities: (() {
        final guardedValue = map['resourceIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserCredsResourceIdentity>(
            guardedValue,
            (value) => UserCredsResourceIdentity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      securePassword: (() {
        final guardedValue = map['securePassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
