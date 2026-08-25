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
  final pulumi.Input<List<DeveloperAttribute>?>? attributes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  /// [firstName] First name of the developer.
  /// [lastName] Last name of the developer.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  const DeveloperArgs({
    this.attributes,
    this.deletionPolicy,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.orgId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'orgId': orgId,
      'userName': userName,
    };
  }

  factory DeveloperArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperArgs(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeveloperAttribute>(guardedValue, (value) => DeveloperAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
