// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_database_type.dart';
import 'app_serving_status.dart';
import 'feature_settings.dart';
import 'identity_aware_proxy.dart';
import 'url_dispatch_rule.dart';

/// {@template pulumi_appengine_v1_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_app_args_doc}
class AppArgs {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  final pulumi.Input<String>? authDomain;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  final pulumi.Input<AppDatabaseType>? databaseType;
  /// Cookie expiration policy for this application.
  final pulumi.Input<String>? defaultCookieExpiration;
  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  final pulumi.Input<List<UrlDispatchRule>>? dispatchRules;
  /// The feature specific settings to be used in the application.
  final pulumi.Input<FeatureSettings>? featureSettings;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;
  final pulumi.Input<IdentityAwareProxy>? iap;
  /// Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  final pulumi.Input<String>? id;
  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  final pulumi.Input<String>? location;
  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  final pulumi.Input<String>? serviceAccount;
  /// Serving status of this application.
  final pulumi.Input<AppServingStatus>? servingStatus;

  /// Creates a new [AppArgs].
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
  AppArgs({
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
      'databaseType': ?pulumi.Input.mapOptionalInputValue<AppDatabaseType, String>(databaseType, (value) => value.value),
      'defaultCookieExpiration': ?defaultCookieExpiration,
      'dispatchRules': ?pulumi.Input.mapOptionalInputValue<List<UrlDispatchRule>, List<Map<String, dynamic>>>(dispatchRules, (value) => pulumi.Input.encodeList<UrlDispatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<FeatureSettings, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'iap': ?pulumi.Input.mapOptionalInputValue<IdentityAwareProxy, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'serviceAccount': ?serviceAccount,
      'servingStatus': ?pulumi.Input.mapOptionalInputValue<AppServingStatus, String>(servingStatus, (value) => value.value),
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      authDomain: map['authDomain'] == null ? null : (map['authDomain']! as String).input(),
      databaseType: map['databaseType'] == null ? null : (AppDatabaseType.fromValue(map['databaseType']! as String)).input(),
      defaultCookieExpiration: map['defaultCookieExpiration'] == null ? null : (map['defaultCookieExpiration']! as String).input(),
      dispatchRules: map['dispatchRules'] == null ? null : (pulumi.Input.decodeList<UrlDispatchRule>(map['dispatchRules']!, (value) => UrlDispatchRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      featureSettings: map['featureSettings'] == null ? null : (FeatureSettings.fromMap((map['featureSettings']! as Map).cast<String, dynamic>())).input(),
      generatedCustomerMetadata: map['generatedCustomerMetadata'] == null ? null : ((map['generatedCustomerMetadata']! as Map).cast<String, String>()).input(),
      iap: map['iap'] == null ? null : (IdentityAwareProxy.fromMap((map['iap']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      servingStatus: map['servingStatus'] == null ? null : (AppServingStatus.fromValue(map['servingStatus']! as String)).input(),
    );
  }
}

