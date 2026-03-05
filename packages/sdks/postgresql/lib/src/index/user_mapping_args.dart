// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_mapping_user_mapping_args_doc}
/// The set of arguments for UserMapping.
/// {@endtemplate}
/// {@macro pulumi_index_user_mapping_user_mapping_args_doc}
class UserMappingArgs {
  /// This clause specifies the options of the user mapping. The options typically define the actual user name and password of the mapping. Option names must be unique. The allowed option names and values are specific to the server's foreign-data wrapper.
  final pulumi.Input<Map<String, String>>? options;
  /// The name of an existing server for which the user mapping is to be created.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the user mapping is created.
  final pulumi.Input<String> serverName;
  /// The name of an existing user that is mapped to foreign server. CURRENT_ROLE, CURRENT_USER, and USER match the name of the current user. When PUBLIC is specified, a so-called public mapping is created that is used when no user-specific mapping is applicable.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the user mapping is created.
  final pulumi.Input<String> userName;

  /// Creates a new [UserMappingArgs].
  /// [options] This clause specifies the options of the user mapping. The options typically define the actual user name and password of the mapping. Option names must be unique. The allowed option names and values are specific to the server's foreign-data wrapper.
  /// [serverName] The name of an existing server for which the user mapping is to be created.
  /// [userName] The name of an existing user that is mapped to foreign server. CURRENT_ROLE, CURRENT_USER, and USER match the name of the current user. When PUBLIC is specified, a so-called public mapping is created that is used when no user-specific mapping is applicable.
  UserMappingArgs({
    this.options,
    required this.serverName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'serverName': serverName,
      'userName': userName,
    };
  }

  factory UserMappingArgs.fromMap(Map<String, dynamic> map) {
    return UserMappingArgs(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

