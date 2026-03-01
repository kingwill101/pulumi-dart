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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? database,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<UserCredsResourceIdentity>>? resourceIdentities,
    pulumi.Output<String>? securePassword,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      database = pulumi.Input.asOptionalInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceIdentities = pulumi.Input.asOptionalInput<List<UserCredsResourceIdentity>>(resourceIdentities),
      securePassword = pulumi.Input.asOptionalInput<String>(securePassword),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'database': ?database,
      'name': ?name,
      'project': ?project,
      'resourceIdentities': ?pulumi.Input.mapOptionalInputValue<List<UserCredsResourceIdentity>, List<Map<String, dynamic>>>(resourceIdentities, (value) => pulumi.Input.encodeList<UserCredsResourceIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securePassword': ?securePassword,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory UserCredsState.fromMap(Map<String, dynamic> map) {
    return UserCredsState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceIdentities: map['resourceIdentities'] == null ? null : pulumi.Output.create<List<UserCredsResourceIdentity>>(pulumi.Input.decodeList<UserCredsResourceIdentity>(map['resourceIdentities'], (value) => UserCredsResourceIdentity.fromMap((value as Map).cast<String, dynamic>()))),
      securePassword: map['securePassword'] == null ? null : pulumi.Output.create<String>(map['securePassword'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

