// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_attribute.dart';

/// {@template pulumi_apigee_developer_app_developer_app_args_doc}
/// The set of arguments for DeveloperApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_developer_app_developer_app_args_doc}
class DeveloperAppArgs {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<String>>? apiProducts;
  /// Developer app family.
  final pulumi.Input<String>? appFamily;
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppAttribute>>? attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  final pulumi.Input<String> callbackUrl;
  /// Email address of the developer.
  /// This value is used to uniquely identify the developer in Apigee hybrid.
  /// Note that the email address has to be in lowercase only.
  final pulumi.Input<String> developerEmail;
  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of -1,
  /// the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;
  /// Name of the developer app.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;
  /// Status of the credential. Valid values include approved or revoked.
  final pulumi.Input<String>? status;

  /// Creates a new [DeveloperAppArgs].
  /// [apiProducts] List of API products associated with the developer app.
  /// [appFamily] Developer app family.
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate
  /// [developerEmail] Email address of the developer.
  /// [keyExpiresIn] Expiration time, in milliseconds, for the consumer key that is generated
  /// [name] Name of the developer app.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [scopes] Scopes to apply to the developer app.
  /// [status] Status of the credential. Valid values include approved or revoked.
  DeveloperAppArgs({
    this.apiProducts,
    this.appFamily,
    this.attributes,
    required this.callbackUrl,
    required this.developerEmail,
    this.keyExpiresIn,
    this.name,
    required this.orgId,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appFamily': ?appFamily,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAppAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'callbackUrl': callbackUrl,
      'developerEmail': developerEmail,
      'keyExpiresIn': ?keyExpiresIn,
      'name': ?name,
      'orgId': orgId,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory DeveloperAppArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperAppArgs(
      apiProducts: map['apiProducts'] == null ? null : ((map['apiProducts']! as List).cast<String>()).input(),
      appFamily: map['appFamily'] == null ? null : (map['appFamily']! as String).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<DeveloperAppAttribute>(map['attributes']!, (value) => DeveloperAppAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      callbackUrl: (map['callbackUrl'] as String).input(),
      developerEmail: (map['developerEmail'] as String).input(),
      keyExpiresIn: map['keyExpiresIn'] == null ? null : (map['keyExpiresIn']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: (map['orgId'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

