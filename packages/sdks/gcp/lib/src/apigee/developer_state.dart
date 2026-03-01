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
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  /// [firstName] First name of the developer.
  /// [lastModifiedAt] Time at which the developer was last modified in milliseconds since epoch.
  /// [lastName] Last name of the developer.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [organizatioName] Name of the Apigee organization in which the developer resides.
  /// [status] Status of the developer. Valid values are active and inactive.
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  DeveloperState({
    pulumi.Output<List<DeveloperAttribute>>? attributes,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? email,
    pulumi.Output<String>? firstName,
    pulumi.Output<String>? lastModifiedAt,
    pulumi.Output<String>? lastName,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? organizatioName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? userName,
  }) :
      attributes = pulumi.Input.asOptionalInput<List<DeveloperAttribute>>(attributes),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      email = pulumi.Input.asOptionalInput<String>(email),
      firstName = pulumi.Input.asOptionalInput<String>(firstName),
      lastModifiedAt = pulumi.Input.asOptionalInput<String>(lastModifiedAt),
      lastName = pulumi.Input.asOptionalInput<String>(lastName),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      organizatioName = pulumi.Input.asOptionalInput<String>(organizatioName),
      status = pulumi.Input.asOptionalInput<String>(status),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
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
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<DeveloperAttribute>>(pulumi.Input.decodeList<DeveloperAttribute>(map['attributes'], (value) => DeveloperAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      firstName: map['firstName'] == null ? null : pulumi.Output.create<String>(map['firstName'] as String),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : pulumi.Output.create<String>(map['lastModifiedAt'] as String),
      lastName: map['lastName'] == null ? null : pulumi.Output.create<String>(map['lastName'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      organizatioName: map['organizatioName'] == null ? null : pulumi.Output.create<String>(map['organizatioName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

