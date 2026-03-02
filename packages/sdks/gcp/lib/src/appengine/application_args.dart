// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_feature_settings.dart';
import 'application_iap.dart';

/// {@template pulumi_appengine_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_appengine_application_application_args_doc}
class ApplicationArgs {
  /// The domain to authenticate users with when using App Engine's User API.
  final pulumi.Input<String>? authDomain;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// `gcp.firestore.Database`
  /// resource instead.
  final pulumi.Input<String>? databaseType;
  /// A block of optional settings to configure specific App Engine features:
  final pulumi.Input<ApplicationFeatureSettings>? featureSettings;
  /// Settings for enabling Cloud Identity Aware Proxy
  final pulumi.Input<ApplicationIap>? iap;
  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  final pulumi.Input<String> locationId;
  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  final pulumi.Input<String>? project;
  /// The serving status of the app.
  final pulumi.Input<String>? servingStatus;
  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [ApplicationArgs].
  /// [authDomain] The domain to authenticate users with when using App Engine's User API.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [featureSettings] A block of optional settings to configure specific App Engine features:
  /// [iap] Settings for enabling Cloud Identity Aware Proxy
  /// [locationId] The [location](https://cloud.google.com/appengine/docs/locations)
  /// [project] The project ID to create the application under.
  /// [servingStatus] The serving status of the app.
  /// [sslPolicy] A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  ApplicationArgs({
    this.authDomain,
    this.databaseType,
    this.featureSettings,
    this.iap,
    required this.locationId,
    this.project,
    this.servingStatus,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authDomain': ?authDomain,
      'databaseType': ?databaseType,
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<ApplicationFeatureSettings, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'iap': ?pulumi.Input.mapOptionalInputValue<ApplicationIap, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'locationId': locationId,
      'project': ?project,
      'servingStatus': ?servingStatus,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      authDomain: map['authDomain'] == null ? null : (map['authDomain'] as String).input(),
      databaseType: map['databaseType'] == null ? null : (map['databaseType'] as String).input(),
      featureSettings: map['featureSettings'] == null ? null : (ApplicationFeatureSettings.fromMap((map['featureSettings'] as Map).cast<String, dynamic>())).input(),
      iap: map['iap'] == null ? null : (ApplicationIap.fromMap((map['iap'] as Map).cast<String, dynamic>())).input(),
      locationId: (map['locationId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      servingStatus: map['servingStatus'] == null ? null : (map['servingStatus'] as String).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (map['sslPolicy'] as String).input(),
    );
  }
}

