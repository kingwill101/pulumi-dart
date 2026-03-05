// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_group_get_group_args_doc}
class GetGroupArgs {
  /// The ID of the authentication domain the group to be searched for belongs to.
  final pulumi.Input<String> authenticationDomainId;
  /// The name of the group to search for.
  ///
  /// &gt; **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  final pulumi.Input<String> name;

  /// Creates a new [GetGroupArgs].
  /// [authenticationDomainId] The ID of the authentication domain the group to be searched for belongs to.
  /// [name] The name of the group to search for.
  GetGroupArgs({
    required this.authenticationDomainId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': authenticationDomainId,
      'name': name,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      authenticationDomainId: pulumi.Input.fromValue(map['authenticationDomainId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

