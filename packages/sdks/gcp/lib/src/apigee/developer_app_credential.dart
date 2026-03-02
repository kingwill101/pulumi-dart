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
  /// (Output)
  /// Consumer key.
  final pulumi.Input<String>? consumerKey;
  /// (Output)
  /// Secret key.
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
  /// [consumerKey] (Output)
  /// [consumerSecret] (Output)
  /// [expiresAt] (Output)
  /// [issuedAt] (Output)
  /// [scopes] Scopes to apply to the developer app.
  /// [status] Status of the credential. Valid values include approved or revoked.
  DeveloperAppCredential({
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
      apiProducts: map['apiProducts'] == null ? null : (pulumi.Input.decodeList<DeveloperAppCredentialApiProduct>(map['apiProducts']!, (value) => DeveloperAppCredentialApiProduct.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<DeveloperAppCredentialAttribute>(map['attributes']!, (value) => DeveloperAppCredentialAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consumerKey: map['consumerKey'] == null ? null : (map['consumerKey']! as String).input(),
      consumerSecret: map['consumerSecret'] == null ? null : (map['consumerSecret']! as String).input(),
      expiresAt: map['expiresAt'] == null ? null : (map['expiresAt']! as String).input(),
      issuedAt: map['issuedAt'] == null ? null : (map['issuedAt']! as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

