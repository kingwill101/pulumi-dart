// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_attribute.dart';

/// {@template pulumi_apigee_developer_developer_args_doc}
/// The set of arguments for Developer.
/// {@endtemplate}
/// {@macro pulumi_apigee_developer_developer_args_doc}
class DeveloperArgs {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAttribute>>? attributes;
  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  final pulumi.Input<String> email;
  /// First name of the developer.
  final pulumi.Input<String> firstName;
  /// Last name of the developer.
  final pulumi.Input<String> lastName;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// User name of the developer. Not used by Apigee hybrid.
  final pulumi.Input<String> userName;

  /// Creates a new [DeveloperArgs].
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  /// [firstName] First name of the developer.
  /// [lastName] Last name of the developer.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  DeveloperArgs({
    pulumi.Output<List<DeveloperAttribute>>? attributes,
    required pulumi.Output<String> email,
    required pulumi.Output<String> firstName,
    required pulumi.Output<String> lastName,
    required pulumi.Output<String> orgId,
    required pulumi.Output<String> userName,
  }) :
      attributes = pulumi.Input.asOptionalInput<List<DeveloperAttribute>>(attributes),
      email = pulumi.Input.asInput<String>(email),
      firstName = pulumi.Input.asInput<String>(firstName),
      lastName = pulumi.Input.asInput<String>(lastName),
      orgId = pulumi.Input.asInput<String>(orgId),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'orgId': orgId,
      'userName': userName,
    };
  }

  factory DeveloperArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperArgs(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<DeveloperAttribute>>(pulumi.Input.decodeList<DeveloperAttribute>(map['attributes'], (value) => DeveloperAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      email: pulumi.Output.create<String>(map['email'] as String),
      firstName: pulumi.Output.create<String>(map['firstName'] as String),
      lastName: pulumi.Output.create<String>(map['lastName'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

