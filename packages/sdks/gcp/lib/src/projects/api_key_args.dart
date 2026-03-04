// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_restrictions.dart';

/// {@template pulumi_projects_api_key_api_key_args_doc}
/// The set of arguments for ApiKey.
/// {@endtemplate}
/// {@macro pulumi_projects_api_key_api_key_args_doc}
class ApiKeyArgs {
  /// Human-readable display name of this API key. Modifiable by user.
  final pulumi.Input<String>? displayName;

  /// The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Key restrictions.
  final pulumi.Input<ApiKeyRestrictions>? restrictions;

  /// The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.devsite.corp.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  final pulumi.Input<String>? serviceAccountEmail;

  /// Creates a new [ApiKeyArgs].
  /// [displayName] Human-readable display name of this API key. Modifiable by user.
  /// [name] The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  /// [project] The project for the resource
  /// [restrictions] Key restrictions.
  /// [serviceAccountEmail] The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.devsite.corp.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  ApiKeyArgs({
    this.displayName,
    this.name,
    this.project,
    this.restrictions,
    this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'restrictions':
          ?pulumi.Input.mapOptionalInputValue<
            ApiKeyRestrictions,
            Map<String, dynamic>
          >(restrictions, (value) => value.toMap()),
      'serviceAccountEmail': ?serviceAccountEmail,
    };
  }

  factory ApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restrictions: (() {
        final guardedValue = map['restrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiKeyRestrictions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceAccountEmail: (() {
        final guardedValue = map['serviceAccountEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
