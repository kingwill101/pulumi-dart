// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_restrictions.dart';

/// Input properties used for looking up and filtering ApiKey resources.
class ApiKeyState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable display name of this API key. Modifiable by user.
  final pulumi.Input<String?>? displayName;
  /// Output only. An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  final pulumi.Input<String?>? keyString;
  /// The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// Key restrictions.
  final pulumi.Input<ApiKeyRestrictions?>? restrictions;
  /// The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  final pulumi.Input<String?>? serviceAccountEmail;
  /// Output only. Unique id in UUID4 format.
  final pulumi.Input<String?>? uid;

  /// Creates a new [ApiKeyState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [displayName] Human-readable display name of this API key. Modifiable by user.
  /// [keyString] Output only. An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  /// [name] The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  /// [project] The project for the resource
  /// [restrictions] Key restrictions.
  /// [serviceAccountEmail] The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  /// [uid] Output only. Unique id in UUID4 format.
  const ApiKeyState({
    this.deletionPolicy,
    this.displayName,
    this.keyString,
    this.name,
    this.project,
    this.restrictions,
    this.serviceAccountEmail,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'keyString': ?keyString,
      'name': ?name,
      'project': ?project,
      'restrictions': ?pulumi.Input.mapOptionalInputValue<ApiKeyRestrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'serviceAccountEmail': ?serviceAccountEmail,
      'uid': ?uid,
    };
  }

  factory ApiKeyState.fromMap(Map<String, dynamic> map) {
    return ApiKeyState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyString: (() { final guardedValue = map['keyString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictions: (() { final guardedValue = map['restrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
