// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_attribute.dart';
import 'developer_app_credential.dart';

/// Input properties used for looking up and filtering DeveloperApp resources.
class DeveloperAppState {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<String>>? apiProducts;
  /// Developer app family.
  final pulumi.Input<String>? appFamily;
  /// ID of the developer app. This ID is not user specified but is
  /// automatically generated on app creation. appId is a UUID.
  final pulumi.Input<String>? appId;
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppAttribute>>? attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  final pulumi.Input<String>? callbackUrl;
  /// Optionally specify a static consumer key for the developer app's credential.
  /// If not set, the API auto-generates a key. The consumer key must be unique
  /// across all developer apps in an organization. Changing this field forces the
  /// resource to be recreated.
  /// This is a write-only input used at create time: the provider creates the
  /// credential with this key via the keys API and removes the auto-generated
  /// one. The effective key is exposed in the `credentials` output.
  final pulumi.Input<String>? consumerKey;
  /// Optionally specify a static consumer secret for the developer app's
  /// credential. Required if `consumerKey` is specified. If not set, the API
  /// auto-generates a secret. Changing this field forces the resource to be
  /// recreated.
  /// This is a write-only input used at create time; the effective secret is
  /// exposed in the `credentials` output.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? consumerSecret;
  /// Time at which the developer was created in milliseconds since epoch.
  final pulumi.Input<String>? createdAt;
  /// Output only. Set of credentials for the developer app consisting of
  /// the consumer key/secret pairs associated with the API products.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppCredential>>? credentials;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Email address of the developer.
  /// This value is used to uniquely identify the developer in Apigee hybrid.
  /// Note that the email address has to be in lowercase only.
  final pulumi.Input<String>? developerEmail;
  /// ID of the developer.
  final pulumi.Input<String>? developerId;
  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of -1,
  /// the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;
  /// Time at which the developer was last modified in milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;
  /// Name of the developer app.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;
  /// Status of the credential. Valid values include approved or revoked.
  final pulumi.Input<String>? status;

  /// Creates a new [DeveloperAppState].
  /// [apiProducts] List of API products associated with the developer app.
  /// [appFamily] Developer app family.
  /// [appId] ID of the developer app. This ID is not user specified but is
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate
  /// [consumerKey] Optionally specify a static consumer key for the developer app's credential.
  /// [consumerSecret] Optionally specify a static consumer secret for the developer app's
  /// [createdAt] Time at which the developer was created in milliseconds since epoch.
  /// [credentials] Output only. Set of credentials for the developer app consisting of
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [developerEmail] Email address of the developer.
  /// [developerId] ID of the developer.
  /// [keyExpiresIn] Expiration time, in milliseconds, for the consumer key that is generated
  /// [lastModifiedAt] Time at which the developer was last modified in milliseconds since epoch.
  /// [name] Name of the developer app.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [scopes] Scopes to apply to the developer app.
  /// [status] Status of the credential. Valid values include approved or revoked.
  const DeveloperAppState({
    this.apiProducts,
    this.appFamily,
    this.appId,
    this.attributes,
    this.callbackUrl,
    this.consumerKey,
    this.consumerSecret,
    this.createdAt,
    this.credentials,
    this.deletionPolicy,
    this.developerEmail,
    this.developerId,
    this.keyExpiresIn,
    this.lastModifiedAt,
    this.name,
    this.orgId,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appFamily': ?appFamily,
      'appId': ?appId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAppAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'callbackUrl': ?callbackUrl,
      'consumerKey': ?consumerKey,
      'consumerSecret': ?consumerSecret,
      'createdAt': ?createdAt,
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<DeveloperAppCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'developerEmail': ?developerEmail,
      'developerId': ?developerId,
      'keyExpiresIn': ?keyExpiresIn,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'orgId': ?orgId,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory DeveloperAppState.fromMap(Map<String, dynamic> map) {
    return DeveloperAppState(
      apiProducts: (() { final guardedValue = map['apiProducts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      appFamily: (() { final guardedValue = map['appFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeveloperAppAttribute>(guardedValue, (value) => DeveloperAppAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      callbackUrl: (() { final guardedValue = map['callbackUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerKey: (() { final guardedValue = map['consumerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerSecret: (() { final guardedValue = map['consumerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeveloperAppCredential>(guardedValue, (value) => DeveloperAppCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerEmail: (() { final guardedValue = map['developerEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerId: (() { final guardedValue = map['developerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyExpiresIn: (() { final guardedValue = map['keyExpiresIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
