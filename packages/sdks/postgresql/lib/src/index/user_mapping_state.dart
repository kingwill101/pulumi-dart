// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserMapping resources.
class UserMappingState {
  /// This clause specifies the options of the user mapping. The options typically define the actual user name and password of the mapping. Option names must be unique. The allowed option names and values are specific to the server's foreign-data wrapper.
  final pulumi.Input<Map<String, String>>? options;
  /// The name of an existing server for which the user mapping is to be created.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the user mapping is created.
  final pulumi.Input<String>? serverName;
  /// The name of an existing user that is mapped to foreign server. CURRENT_ROLE, CURRENT_USER, and USER match the name of the current user. When PUBLIC is specified, a so-called public mapping is created that is used when no user-specific mapping is applicable.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the user mapping is created.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserMappingState].
  /// [options] This clause specifies the options of the user mapping. The options typically define the actual user name and password of the mapping. Option names must be unique. The allowed option names and values are specific to the server's foreign-data wrapper.
  /// [serverName] The name of an existing server for which the user mapping is to be created.
  /// [userName] The name of an existing user that is mapped to foreign server. CURRENT_ROLE, CURRENT_USER, and USER match the name of the current user. When PUBLIC is specified, a so-called public mapping is created that is used when no user-specific mapping is applicable.
  UserMappingState({
    pulumi.Output<Map<String, String>>? options,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? userName,
  }) :
      options = pulumi.Input.asOptionalInput<Map<String, String>>(options),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'serverName': ?serverName,
      'userName': ?userName,
    };
  }

  factory UserMappingState.fromMap(Map<String, dynamic> map) {
    return UserMappingState(
      options: map['options'] == null ? null : pulumi.Output.create<Map<String, String>>((map['options'] as Map).cast<String, String>()),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

