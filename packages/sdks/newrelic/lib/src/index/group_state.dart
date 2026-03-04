// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The ID of the authentication domain to which the group to be created would belong.
  final pulumi.Input<String>? authenticationDomainId;

  /// The name of the group to be created.
  final pulumi.Input<String>? name;

  /// A list of IDs of users to be included in the group to be created.
  ///
  /// &gt; **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  ///
  /// &gt; **WARNING:** Changing the `authentication_domain_id` of a `newrelic.Group` resource that has already been applied would result in a **replacement** of the resource – destruction of the existing resource, followed by the addition of a new resource with the specified configuration. This is due to the fact that updating the `authentication_domain_id` of an existing group is not supported.
  final pulumi.Input<List<String>>? userIds;

  /// Creates a new [GroupState].
  /// [authenticationDomainId] The ID of the authentication domain to which the group to be created would belong.
  /// [name] The name of the group to be created.
  /// [userIds] A list of IDs of users to be included in the group to be created.
  GroupState({this.authenticationDomainId, this.name, this.userIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': ?authenticationDomainId,
      'name': ?name,
      'userIds': ?userIds,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      authenticationDomainId: (() {
        final guardedValue = map['authenticationDomainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userIds: (() {
        final guardedValue = map['userIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
