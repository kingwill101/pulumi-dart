// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_database_type_appengine_v1beta.dart';
import 'app_serving_status_appengine_v1beta.dart';
import 'feature_settings_appengine_v1beta.dart';
import 'identity_aware_proxy_appengine_v1beta.dart';
import 'url_dispatch_rule_appengine_v1beta.dart';

/// {@template pulumi_appengine_v1beta_app_appengine_v1beta_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_app_appengine_v1beta_args_doc}
class AppAppengineV1betaArgs {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  final pulumi.Input<String>? authDomain;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  final pulumi.Input<AppDatabaseTypeAppengineV1beta>? databaseType;
  /// Cookie expiration policy for this application.
  final pulumi.Input<String>? defaultCookieExpiration;
  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  final pulumi.Input<List<UrlDispatchRuleAppengineV1beta>>? dispatchRules;
  /// The feature specific settings to be used in the application.
  final pulumi.Input<FeatureSettingsAppengineV1beta>? featureSettings;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;
  final pulumi.Input<IdentityAwareProxyAppengineV1beta>? iap;
  /// Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  final pulumi.Input<String>? id;
  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  final pulumi.Input<String>? location;
  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  final pulumi.Input<String>? serviceAccount;
  /// Serving status of this application.
  final pulumi.Input<AppServingStatusAppengineV1beta>? servingStatus;

  /// Creates a new [AppAppengineV1betaArgs].
  /// [authDomain] Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [defaultCookieExpiration] Cookie expiration policy for this application.
  /// [dispatchRules] HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  /// [featureSettings] The feature specific settings to be used in the application.
  /// [generatedCustomerMetadata] Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  /// [iap] Optional.
  /// [id] Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  /// [location] Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  /// [serviceAccount] The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  /// [servingStatus] Serving status of this application.
  const AppAppengineV1betaArgs({
    this.authDomain,
    this.databaseType,
    this.defaultCookieExpiration,
    this.dispatchRules,
    this.featureSettings,
    this.generatedCustomerMetadata,
    this.iap,
    this.id,
    this.location,
    this.serviceAccount,
    this.servingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authDomain': ?authDomain,
      'databaseType': ?pulumi.Input.mapOptionalInputValue<AppDatabaseTypeAppengineV1beta, String>(databaseType, (value) => value.wireValue),
      'defaultCookieExpiration': ?defaultCookieExpiration,
      'dispatchRules': ?pulumi.Input.mapOptionalInputValue<List<UrlDispatchRuleAppengineV1beta>, List<Map<String, dynamic>>>(dispatchRules, (value) => pulumi.Input.encodeList<UrlDispatchRuleAppengineV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<FeatureSettingsAppengineV1beta, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'iap': ?pulumi.Input.mapOptionalInputValue<IdentityAwareProxyAppengineV1beta, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'serviceAccount': ?serviceAccount,
      'servingStatus': ?pulumi.Input.mapOptionalInputValue<AppServingStatusAppengineV1beta, String>(servingStatus, (value) => value.wireValue),
    };
  }

  factory AppAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return AppAppengineV1betaArgs(
      authDomain: (() { final guardedValue = map['authDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppDatabaseTypeAppengineV1beta.fromValue(guardedValue as String)); })(),
      defaultCookieExpiration: (() { final guardedValue = map['defaultCookieExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dispatchRules: (() { final guardedValue = map['dispatchRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UrlDispatchRuleAppengineV1beta>(guardedValue, (value) => UrlDispatchRuleAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      featureSettings: (() { final guardedValue = map['featureSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSettingsAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generatedCustomerMetadata: (() { final guardedValue = map['generatedCustomerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      iap: (() { final guardedValue = map['iap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityAwareProxyAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servingStatus: (() { final guardedValue = map['servingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppServingStatusAppengineV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}
