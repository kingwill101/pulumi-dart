// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_settings_response.dart';
import 'identity_aware_proxy_response.dart';
import 'url_dispatch_rule_response.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  final String? authDomain;
  /// Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.
  final String? codeBucket;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  final String? databaseType;
  /// Google Cloud Storage bucket that can be used by this application to store content.
  final String? defaultBucket;
  /// Cookie expiration policy for this application.
  final String? defaultCookieExpiration;
  /// Hostname used to reach this application, as resolved by App Engine.
  final String? defaultHostname;
  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  final List<UrlDispatchRuleResponse>? dispatchRules;
  /// The feature specific settings to be used in the application.
  final FeatureSettingsResponse? featureSettings;
  /// The Google Container Registry domain used for storing managed build docker images for this application.
  final String? gcrDomain;
  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  final Map<String, String>? generatedCustomerMetadata;
  final IdentityAwareProxyResponse? iap;
  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  final String? location;
  /// Full path to the Application resource in the API. Example: apps/myapp.
  final String? name;
  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  final String? serviceAccount;
  /// Serving status of this application.
  final String? servingStatus;

  /// Creates a new [GetAppResult].
  /// [authDomain] Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  /// [codeBucket] Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [defaultBucket] Google Cloud Storage bucket that can be used by this application to store content.
  /// [defaultCookieExpiration] Cookie expiration policy for this application.
  /// [defaultHostname] Hostname used to reach this application, as resolved by App Engine.
  /// [dispatchRules] HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  /// [featureSettings] The feature specific settings to be used in the application.
  /// [gcrDomain] The Google Container Registry domain used for storing managed build docker images for this application.
  /// [generatedCustomerMetadata] Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  /// [iap] Optional.
  /// [location] Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  /// [name] Full path to the Application resource in the API. Example: apps/myapp.
  /// [serviceAccount] The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  /// [servingStatus] Serving status of this application.
  const GetAppResult({
    this.authDomain,
    this.codeBucket,
    this.databaseType,
    this.defaultBucket,
    this.defaultCookieExpiration,
    this.defaultHostname,
    this.dispatchRules,
    this.featureSettings,
    this.gcrDomain,
    this.generatedCustomerMetadata,
    this.iap,
    this.location,
    this.name,
    this.serviceAccount,
    this.servingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authDomain': ?authDomain,
      'codeBucket': ?codeBucket,
      'databaseType': ?databaseType,
      'defaultBucket': ?defaultBucket,
      'defaultCookieExpiration': ?defaultCookieExpiration,
      'defaultHostname': ?defaultHostname,
      'dispatchRules': ?(() { final guardedValue = dispatchRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<UrlDispatchRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'featureSettings': ?featureSettings?.toMap(),
      'gcrDomain': ?gcrDomain,
      'generatedCustomerMetadata': ?generatedCustomerMetadata,
      'iap': ?iap?.toMap(),
      'location': ?location,
      'name': ?name,
      'serviceAccount': ?serviceAccount,
      'servingStatus': ?servingStatus,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      authDomain: (() { final guardedValue = map['authDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      codeBucket: (() { final guardedValue = map['codeBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultBucket: (() { final guardedValue = map['defaultBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultCookieExpiration: (() { final guardedValue = map['defaultCookieExpiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dispatchRules: (() { final guardedValue = map['dispatchRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UrlDispatchRuleResponse>(guardedValue, (value) => UrlDispatchRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      featureSettings: (() { final guardedValue = map['featureSettings']; if (guardedValue == null) return null; return FeatureSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gcrDomain: (() { final guardedValue = map['gcrDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generatedCustomerMetadata: (() { final guardedValue = map['generatedCustomerMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      iap: (() { final guardedValue = map['iap']; if (guardedValue == null) return null; return IdentityAwareProxyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servingStatus: (() { final guardedValue = map['servingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
