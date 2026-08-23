// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_credential_api_product.dart';
import 'developer_app_credential_attribute.dart';

class DeveloperAppCredential {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<DeveloperAppCredentialApiProduct>>? apiProducts;
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppCredentialAttribute>>? attributes;
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
  /// (Output)
  /// Time the credential will expire in milliseconds since epoch.
  final pulumi.Input<String>? expiresAt;
  /// (Output)
  /// Time the credential was issued in milliseconds since epoch.
  final pulumi.Input<String>? issuedAt;
  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;
  /// Status of the credential. Valid values include approved or revoked.
  final pulumi.Input<String>? status;

  /// Creates a new [DeveloperAppCredential].
  /// [apiProducts] List of API products associated with the developer app.
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [consumerKey] Optionally specify a static consumer key for the developer app's credential.
  /// [consumerSecret] Optionally specify a static consumer secret for the developer app's
  /// [expiresAt] (Output)
  /// [issuedAt] (Output)
  /// [scopes] Scopes to apply to the developer app.
  /// [status] Status of the credential. Valid values include approved or revoked.
  const DeveloperAppCredential({
    this.apiProducts,
    this.attributes,
    this.consumerKey,
    this.consumerSecret,
    this.expiresAt,
    this.issuedAt,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppCredentialApiProduct>, List<Map<String, dynamic>>>(apiProducts, (value) => pulumi.Input.encodeList<DeveloperAppCredentialApiProduct, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppCredentialAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAppCredentialAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerKey': ?consumerKey,
      'consumerSecret': ?consumerSecret,
      'expiresAt': ?expiresAt,
      'issuedAt': ?issuedAt,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory DeveloperAppCredential.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredential(
      apiProducts: (() { final guardedValue = map['apiProducts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeveloperAppCredentialApiProduct>(guardedValue, (value) => DeveloperAppCredentialApiProduct.fromMap((value as Map).cast<String, dynamic>()))); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeveloperAppCredentialAttribute>(guardedValue, (value) => DeveloperAppCredentialAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consumerKey: (() { final guardedValue = map['consumerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerSecret: (() { final guardedValue = map['consumerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuedAt: (() { final guardedValue = map['issuedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
