// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The ID of the authentication domain to which the user to be created would belong.
  final pulumi.Input<String>? authenticationDomainId;
  /// The email ID of the user to be created.
  final pulumi.Input<String>? emailId;
  /// The name of the user to be created.
  final pulumi.Input<String>? name;
  /// The tier to which the user to be created would belong. Accepted values for this argument are `BASIC_USER_TIER`, `CORE_USER_TIER`, or `FULL_USER_TIER`. If not specified in the configuration, the argument would default to `BASIC_USER_TIER`.
  ///
  /// > **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  ///
  /// > **WARNING:** Changing the `authentication_domain_id` of a `newrelic.User` resource that has already been applied would result in a **replacement** of the resource – destruction of the existing resource, followed by the addition of a new resource with the specified configuration. This is due to the fact that updating the `authentication_domain_id` of an existing user is not supported.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserState].
  /// [authenticationDomainId] The ID of the authentication domain to which the user to be created would belong.
  /// [emailId] The email ID of the user to be created.
  /// [name] The name of the user to be created.
  /// [userType] The tier to which the user to be created would belong. Accepted values for this argument are `BASIC_USER_TIER`, `CORE_USER_TIER`, or `FULL_USER_TIER`. If not specified in the configuration, the argument would default to `BASIC_USER_TIER`.
  UserState({
    pulumi.Output<String>? authenticationDomainId,
    pulumi.Output<String>? emailId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? userType,
  }) :
      authenticationDomainId = pulumi.Input.asOptionalInput<String>(authenticationDomainId),
      emailId = pulumi.Input.asOptionalInput<String>(emailId),
      name = pulumi.Input.asOptionalInput<String>(name),
      userType = pulumi.Input.asOptionalInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': ?authenticationDomainId,
      'emailId': ?emailId,
      'name': ?name,
      'userType': ?userType,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      authenticationDomainId: map['authenticationDomainId'] == null ? null : pulumi.Output.create<String>(map['authenticationDomainId'] as String),
      emailId: map['emailId'] == null ? null : pulumi.Output.create<String>(map['emailId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

