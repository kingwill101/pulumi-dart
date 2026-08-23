// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_attribute.dart';

/// Input properties used for looking up and filtering Developer resources.
class DeveloperState {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAttribute>>? attributes;
  /// Time at which the developer was created in milliseconds since epoch.
  final pulumi.Input<String>? createdAt;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  final pulumi.Input<String>? email;
  /// First name of the developer.
  final pulumi.Input<String>? firstName;
  /// Time at which the developer was last modified in milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;
  /// Last name of the developer.
  final pulumi.Input<String>? lastName;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Name of the Apigee organization in which the developer resides.
  final pulumi.Input<String>? organizatioName;
  /// Status of the developer. Valid values are active and inactive.
  final pulumi.Input<String>? status;
  /// User name of the developer. Not used by Apigee hybrid.
  final pulumi.Input<String>? userName;

  /// Creates a new [DeveloperState].
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [createdAt] Time at which the developer was created in milliseconds since epoch.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  /// [firstName] First name of the developer.
  /// [lastModifiedAt] Time at which the developer was last modified in milliseconds since epoch.
  /// [lastName] Last name of the developer.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [organizatioName] Name of the Apigee organization in which the developer resides.
  /// [status] Status of the developer. Valid values are active and inactive.
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  const DeveloperState({
    this.attributes,
    this.createdAt,
    this.deletionPolicy,
    this.email,
    this.firstName,
    this.lastModifiedAt,
    this.lastName,
    this.orgId,
    this.organizatioName,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'deletionPolicy': ?deletionPolicy,
      'email': ?email,
      'firstName': ?firstName,
      'lastModifiedAt': ?lastModifiedAt,
      'lastName': ?lastName,
      'orgId': ?orgId,
      'organizatioName': ?organizatioName,
      'status': ?status,
      'userName': ?userName,
    };
  }

  factory DeveloperState.fromMap(Map<String, dynamic> map) {
    return DeveloperState(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeveloperAttribute>(guardedValue, (value) => DeveloperAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizatioName: (() { final guardedValue = map['organizatioName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
