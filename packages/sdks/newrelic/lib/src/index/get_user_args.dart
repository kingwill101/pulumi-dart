// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_get_user_args_doc}
class GetUserArgs {
  /// The ID of the authentication domain the user to be searched for belongs to.
  final pulumi.Input<String> authenticationDomainId;
  /// The email ID of the user to search for.
  ///
  /// It should be noted that either `name` or `email_id` must be specified in order to retrieve a matching user.
  ///
  /// &gt; **NOTE** If the `name` specified in the configuration matches the names of multiple users in the account, the data source will return the first match from the list of all matching users retrieved from the API. However, when using the `email_id` argument as the search criterion, only the user with the specified email ID will be returned, as each user has a unique email ID and multiple users cannot have the same email ID.
  ///
  /// &gt; **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  final pulumi.Input<String>? emailId;
  /// The name of the user to search for.
  final pulumi.Input<String>? name;

  /// Creates a new [GetUserArgs].
  /// [authenticationDomainId] The ID of the authentication domain the user to be searched for belongs to.
  /// [emailId] The email ID of the user to search for.
  /// [name] The name of the user to search for.
  const GetUserArgs({
    required this.authenticationDomainId,
    this.emailId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': authenticationDomainId,
      'emailId': ?emailId,
      'name': ?name,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      authenticationDomainId: pulumi.Input.fromValue(map['authenticationDomainId'] as String),
      emailId: (() { final guardedValue = map['emailId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

