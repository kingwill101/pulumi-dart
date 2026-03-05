// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_flow_attribute_user_flow_attribute_args_doc}
/// The set of arguments for UserFlowAttribute.
/// {@endtemplate}
/// {@macro pulumi_index_user_flow_attribute_user_flow_attribute_args_doc}
class UserFlowAttributeArgs {
  /// The data type of the user flow attribute. Possible values are `boolean`, `dateTime`, `int64`, `string` or `stringCollection`. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataType;
  /// The description of the user flow attribute that is shown to the user at the time of sign-up.
  final pulumi.Input<String> description;
  /// The display name of the user flow attribute. Changing this forces a new resource to be created.
  final pulumi.Input<String> displayName;

  /// Creates a new [UserFlowAttributeArgs].
  /// [dataType] The data type of the user flow attribute. Possible values are `boolean`, `dateTime`, `int64`, `string` or `stringCollection`. Changing this forces a new resource to be created.
  /// [description] The description of the user flow attribute that is shown to the user at the time of sign-up.
  /// [displayName] The display name of the user flow attribute. Changing this forces a new resource to be created.
  UserFlowAttributeArgs({
    required this.dataType,
    required this.description,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'description': description,
      'displayName': displayName,
    };
  }

  factory UserFlowAttributeArgs.fromMap(Map<String, dynamic> map) {
    return UserFlowAttributeArgs(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

