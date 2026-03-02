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
    this.attributes,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.orgId,
    required this.userName,
  });

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
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<DeveloperAttribute>(map['attributes']!, (value) => DeveloperAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      email: (map['email'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      orgId: (map['orgId'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

